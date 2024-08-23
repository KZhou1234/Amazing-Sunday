#!/bin/bash
menu=("Burger" "BBQ" "Fried rice" "Sushi" "Yakitori" "dumplings" "Pizza")
shuffled_menu=($(shuf -e "${menu[@]}"))
echo "Welcome to Ke's Sunday! Please make a selection to help Ke spend her day wonderfully!"
echo "Today is Sunday and Ke does’t have any plans. After checking the weather, Ke find out that it’s a:"
select weather in "Sunny day" "Rainy day" "exit"; do
    case $weather in
        "Sunny day")
            echo "Ke thinks, \"The weather is great! Let me see what fun things I can do today!\""
            select plan in "Go to Central Park" "Stay Home" "exit"; do
                case $plan in
                    "Go to Central Park")
                        echo "Ke decides to head out on her own to enjoy the day in Central Park. "
                        echo "She was looking forward to enjoying the beautiful scenery, or taking a leisurely walk in the park."
                        echo "After she got to the park and realized that"
                        select people in "so many people today" "it's too quiet today" "exit"; do
                            case $people in
                                "so many people today")
                                    echo "This crowd was really surprising. Ke wonders if there was a special event, festival, or big outdoor concert in Central Park today. "
                                    echo "It's unusual to see so many people on just one weekend."
                                    echo "By checking the events in Central Park today, Ke finds that there is a"
                                    select event in "concert" "food festival" "exit"; do
                                        case $event in
                                            "concert")
                                                echo "Wow, there is a concert today! It is called Global Citizen Festival"
                                                echo "Do you know who I met?"
                                                read name
                                                if [ $name == "Lisa" ]
                                                then
                                                    echo "You knew it!"
                                                else
                                                
                                                    echo "I wish I could meet $name as well! I unexpectedly met Lisa."
                                                fi
                                                echo "What an amazing day! The weather is perfect, and Central Park is buzzing with so much energy and excitement."
                                                echo " Ke has had a great time exploring and taking in all the sights. She can’t wait to tell friends all about it and share some of the pictures and stories from today.!"
                                                exit 0
                                                ;;
                                            "food festival")
                                                echo "Wow, today has a food festival!"
                                                echo "There are tons to choose from, for example "
                                                for item in "${menu[@]}"; do
                                         
                                                    echo "- $item"
                                                done
                                                echo "She wants to have them all. However, she can only has three of them. She had: "
                                                count=0
                                                while [ $count -lt 3 ]; do
                                                    echo "- ${shuffled_menu[count]}"
                                                    count=$((count+1))
                                                done
                                                echo "Ke is so happy to be at this event and is already checking the schedule for the next festival."
                                                echo "It is a great idea to come with friends next time!"                                             
                                                exit 0;
                                                ;;
                                            "exit")
                                                echo "Are you sure to exit?"
                                                select answer in "Yes" "No"; do
                                                    case $answer in
                                                    "Yes")
                                                        exit 0;
                                                        ;;
                                                    "No")
                                                        echo "You can select again."
                                                        break
                                                    ;;
                                                    esac
                                                done
                                        esac
                                    done
                                    
                                        ;;

                                
                                "it's too quiet today")
                                    echo "Is today really Sunday? Why are there so few people in the park? It feels strange… so Ke decides to"
                                    select action in "check news online" "ask a random person" "exit"; do
                                        case $action in
                                            "check news online")
                                                echo "hemm, that's wired! Let me check what's happend! Ke then"
                                                echo "Oh, there is a food festival nearby, people are go there. Ke also want to take a look. "
                                                echo "The food are nice! after eat a lot of delicious food, Ke go back happy."
                                                echo "Ke found there are so many choices, she want to eat all of them! There are "
                                                for item in "${menu[@]}"; do
                                         
                                                    echo "- $item"
                                                done
                                                echo "She wishes to have them all. However, she can only has three of them. She had: "
                                                count=0
                                                while [ $count -lt 3 ]; do
                                                    echo "- ${shuffled_menu[count]}"
                                                    count=$((count+1))
                                                done
                                                echo -e "Ke is so happy to be at this event and is already checking the schedule for the next festival. "
                                                echo "It’s a great idea to come with friends next time!"                                             
                                                exit 0;
                                                ;;
                                           
                                            "ask a random person")
                                                echo -e " No one seems to know what's going on. Ke walks around for a while. The view in Central Park is amazing, but it’s not as lively as it used to be. So, Ke decides to head back home."
                                                echo "Everything feels abnormal, and Ke is so tired that she falls asleep on the train."
                                                echo "Suddenly, her phone rings."
                                                echo "If you wish to continue please enter "yes""
                                                read answer
                                                if [ $answer == "yes" ]
                                                then 
                                                    sleep 5
                                                    echo "Oh no, it’s not Sunday today—it’s Monday! Ke went to the food festival yesterday. But today, she needs to work..."
                                                    exit 0
                                                else
                                                    echo "A sad bye. :("
                                                    exit 0
                                                fi
                                                ;;
                                             "exit")
                                                echo "A sad bye. :("
                                                exit 0
                                                ;;
                                        esac
                                    done
                                    ;;
                                "exit")
                                    echo "A sad bye :("
                                    exit 0
                                    ;;
                            esac
                        done
                        ;;
                    "Stay Home")
                        echo "The weather is nice, but Ke was so tired from the past week that Ke decided to stay home and watch some episodes."
                        echo "Time flies. After spending the whole day on Netflix, it’s time to head to bed."
                        echo "While in bed, Ke gets a text from a friend about a concert in Central Park where Lisa is. Ke wishes she had gone to the park today."
                        exit 0
                        ;;
                    "exit")
                        echo "Are you sure to exit?"
                        select answer in "Yes" "No"; do
                        case $answer in
                        "Yes")
                            exit 0;
                            ;;
                        "No")
                            echo "You can select again."
                            break
                            
                            ;;
                        esac
                        done
                        ;;
                esac
            done
            ;;
        "Rainy day")
            echo "It's raining outside, Ke prefer to"
            select plan in "clean room" "hang out with friends" "watch a movie" "Quit"; do
                case $plan in
                    "clean room")
                        echo "Ke doesn’t like going outside when it’s raining, so she decides to stay home and do some cleaning with music. While cleaning, she finds a box of Lego she bought before. Then she "
                        select lego in "Open it now" "Open it maybe later" "Quit"; do
                            case $lego in
                                "Open it now")
                                    echo "Haha, what a surprise! She can’t wait to start building it!"
                                    echo "Building..."
                                    sleep 5s
                                    echo "Looking at the Lego and the still messy room, she thinks, \"I’ll do the cleaning next week, maybe...\""
                                    exit 0
                                    ;;
                                "Open it maybe later")
                                    echo "Ke chose to get the cleaning done first. After that, She can have fun playing with Lego.."
                                    echo "Then she finished cleaning the room and building the Lego. She put the Lego on the shelf. Nice!"
                                    exit 0
                                    ;;
                                "Quit")
                                    echo "Exiting..."
                                    exit 0
                                    ;;
                               
                            esac
                        done
                        ;;
                    "hang out with friends")
                        echo "Ke marked a great brunch restaurant last week and texted her friend to see if she would like to give it a try."
                        echo "Her friend texted back and said, "
                        select answer in "Yes" "No"; do
                            case $answer in
                                "Yes")
                                    echo "Her friends also wants to give it a try. Both of them think having brunch on a rainy day is a great idea!"
                                    echo "They caught up on the latest news and had a great conversation. When the rain stopped, they decided to go to Central Park together."
                                    echo "The day ended, it was a wonderful Sunday spent with friend. Ke gained a lot of energy from the weekend and is looking forward to another great Sunday."
                                    exit 0
                                    ;;
                                "No")
                                    echo "Her friend doesn’t want to go outside on a rainy day but asked Ke if she’d like to come over to her place. They can watch episodes together."
                                    echo "Ke thought this is also a good idea. She has great new to share with her friend!"
                                    exit 0
                                    ;;
                            esac
                        done
                        ;;
                    "watch a movie")
                        echo "It's not a bad idea to spend a rainy day on movies."
                        echo "Even though she didn’t do anything, she felt like she recovered from the busy week. It had been a great day."
                        exit 0
                        ;;
                    "Quit")
                        echo "Exiting..."
                        exit 0
                        ;;
                 
                esac
            done                
            ;;
        "exit")
            echo "Seems you didn't check the weather and want to exit"
            break
            ;;
    esac
done