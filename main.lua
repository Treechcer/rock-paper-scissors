local function AI()
    local AI = math.ceil(math.random() * 3)
    if AI == 1 then
        return "paper";
    elseif AI == 2 then
        return "rock";
    elseif AI == 3 then
        return "scissors";
    end
end

local function player()
    local playerMove
    repeat
        print("Are you rock, paper or scissors?");
        playerMove = io.read();
    until (not (playerMove ~= "rock" and playerMove ~= "paper" and playerMove ~= "scissors"))
    return playerMove;

end

local function mainLoop(score)
    local AIc = AI();
    local player = player();

    if player == "rock" and AIc == "scissors" then
        print("player wins");
        score[1] = score[1] + 1
    elseif player == "paper" and AIc == "rock" then
        print("player wins");
        score[1] = score[1] + 1
    elseif player == "scissors" and AIc == "paper" then
        print("player wins");
        score[1] = score[1] + 1
    else
        print("AI wins")
        score[2] = score[2] + 1
    end

    print("score is AI:" .. score[1] .. " player:" .. score[2])

    local again;

    repeat 
        print("do you want to play again? (y, n)")
        again = io.read()
    until (not (again == "y" and again == "n"))
    
    if again == "y" then
        mainLoop(score)
    end

end

local score = {0,0}
mainLoop(score);