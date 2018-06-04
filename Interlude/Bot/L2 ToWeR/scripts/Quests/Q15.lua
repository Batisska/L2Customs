SCONFIG = L2TConfig.GetConfig();
moveDistance = 30;
ShowToClient("Q15", "Quest Obligations of the Seeker - Started");
LearnAllSkills();
SetPause(true);
MoveTo(-116553, 239179, -2783, moveDistance);
MoveTo(-116544, 239190, -2786, moveDistance);
TargetNpc("Celin", 33451);
Talk();
ClickAndWait("talk_select", "Quest");
ClickAndWait("quest_choice?choice=2&option=1", "[536401]");
ClickAndWait("menu_select?ask=10364&reply=1", "\"I see.\"");
ClickAndWait("quest_accept?quest_id=10364", "\"Who are they?\"");
ClearTargets();
MoveTo(-116544, 239190, -2786, moveDistance);
MoveTo(-116511, 239268, -2801, moveDistance);
MoveTo(-116440, 239381, -2823, moveDistance);
MoveTo(-116366, 239500, -2847, moveDistance);
MoveTo(-116258, 239673, -2881, moveDistance);
MoveTo(-116189, 239784, -2903, moveDistance);
MoveTo(-116147, 239852, -2917, moveDistance);
MoveTo(-116139, 239926, -2931, moveDistance);
MoveTo(-116120, 240127, -2938, moveDistance);
MoveTo(-116107, 240268, -2829, moveDistance);
MoveTo(-116227, 240425, -2743, moveDistance);
MoveTo(-116282, 240484, -2743, moveDistance);
MoveTo(-117029, 240546, -2743, moveDistance);
MoveTo(-118002, 239525, -2743, moveDistance);
MoveTo(-118197, 239342, -2743, moveDistance);
TargetNpc("Walter", 33452);
Talk();
ClickAndWait("talk_select", "Quest");
ClickAndWait("menu_select?ask=10364&reply=1", "No, Celin sent me.");
ClickAndWait("menu_select?ask=10364&reply=2", "What happened?");
ClickAndWait("menu_select?ask=10364&reply=3", "What do you need delivered?");
ClearTargets();

SCONFIG.targeting.option = L2TConfig.ETargetingType.TT_RANGE_FROM_POINT;
SCONFIG.targeting.centerPoint.X = -118162;
SCONFIG.targeting.centerPoint.Y = 240544;
SCONFIG.targeting.centerPoint.Z = -2743;
SCONFIG.targeting.range = 1200;
SCONFIG.melee.me.enabled = true;
SetPause(false);
SCONFIG.pve:SetAll(true);
repeat
Sleep(1000);
until GetQuestManager():GetQuestProgress(10364) > 2;
SetPause(true);

MoveTo(-118197, 239342, -2743, moveDistance);
MoveTo(-118182, 239286, -2743, moveDistance);
TargetNpc("Ye Sagira Teleport Device", 33191);
Talk();
Click("menu_select?ask=-3520&reply=1", "The 4th Exploration Zone");
WaitForTeleport();
MoveTo(-118182, 239286, -2743, moveDistance);
MoveTo(-112377, 238705, -2919, moveDistance);
MoveTo(-112360, 238789, -2928, moveDistance);
MoveTo(-112355, 238780, -2927, moveDistance);
MoveTo(-111834, 238634, -2912, moveDistance);
MoveTo(-111298, 238217, -2870, moveDistance);
MoveTo(-110974, 238290, -2926, moveDistance);
MoveTo(-110603, 238373, -2926, moveDistance);
MoveTo(-110634, 238290, -2926, moveDistance);
TargetNpc("Def ", 33453);
Talk();
ClickAndWait("talk_select", "Quest");
ClickAndWait("quest_choice?choice=0&option=1", "[536402]");
ClickAndWait("menu_select?ask=10364&reply=1", "\"I've gathered the dirty papers.\"");
ClickAndWait("menu_select?ask=10364&reply=2", "\"Walter told me.\"");
ClickAndWait("menu_select?ask=10364&reply=3", "\"He said he wanted to talk and make up.\"");
ClearTargets();
ShowToClient("Q15", "Quest Obligations of the Seeker - Finished");