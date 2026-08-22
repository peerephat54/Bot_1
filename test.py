import random as r

def get_valid_input(prompt, error_msg, condition_func):
    while True:
        try:
            value = int(input(prompt))
            if condition_func(value):
                return value
        except ValueError:
            pass
        print(error_msg)

def draw_card():
    card = r.randint(1, 13)
    if card > 10:
        return 10
    if card == 1:
        return 11
    return card

def calculate_score(cards):
    score = sum(cards)
    aces = cards.count(11)
    while score > 21 and aces > 0:
        score -= 10
        aces -= 1
    return score

def play_player_turn(player_cards, dealer_cards):
    while True:
        score = calculate_score(player_cards)
        print(f"\nYour cards: {player_cards} | Total: {score}")
        print(f"Dealer's face-up card: [{dealer_cards[0]}]")
        
        if score > 21:
            print("Bust! You went over 21.")
            return score
            
        choice = input("Hit or Stand? (h/s): ").lower().strip()
        if choice == 'h':
            player_cards.append(draw_card())
        elif choice == 's':
            return score
        else:
            print("Invalid input! Enter 'h' or 's'.")

def play_dealer_turn(dealer_cards):
    score = calculate_score(dealer_cards)
    while score < 17:
        dealer_cards.append(draw_card())
        score = calculate_score(dealer_cards)
    return score

def evaluate_round(player_score, dealer_score, bet):
    if player_score > 21:
        return 0
    if dealer_score > 21:
        print("Dealer busts! You win!")
        return bet * 2
    if player_score > dealer_score:
        print("You win! Your score is higher.")
        return bet * 2
    if player_score < dealer_score:
        print("Dealer wins!")
        return 0
    print("It's a tie! Push.")
    return bet

def main():
    money = get_valid_input(
        "Enter top-up amount: ", 
        "Invalid amount!", 
        lambda x: x > 0
    )
    
    while money > 0:
        print("\n" + "=" * 30)
        print(f"Current Balance: ${money}")
        
        bet = get_valid_input(
            "Place your bet: ", 
            f"Invalid bet! You have ${money} available.", 
            lambda x: 0 < x <= money
        )
        money -= bet
        
        player_cards = [draw_card(), draw_card()]
        dealer_cards = [draw_card(), draw_card()]
        
        player_score = play_player_turn(player_cards, dealer_cards)
        
        if player_score <= 21:
            dealer_score = play_dealer_turn(dealer_cards)
            print("\n" + "-" * 10 + " RESULTS " + "-" * 10)
            print(f"Your final hand: {player_cards} | Total: {player_score}")
            print(f"Dealer's final hand: {dealer_cards} | Total: {dealer_score}\n")
            money += evaluate_round(player_score, dealer_score, bet)
        else:
            print(f"\nDealer's hand was: {dealer_cards} | Total: {calculate_score(dealer_cards)}")
            print("Dealer wins because you busted!")
            
        if money <= 0:
            print("\nYou are out of money! Game Over.")
            break
            
        again = input("\nPlay another hand? (y/n): ").lower().strip()
        if again != 'y':
            print(f"\nThank you for playing! You walk away with ${money}.")
            break

if __name__ == "__main__":
    main()