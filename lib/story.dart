class Situation {
  String text;
  int choice_1_id;
  int choice_2_id;
  String option1;
  String option2;

  Situation({
    this.text,
    this.choice_1_id,
    this.choice_2_id,
    this.option1,
    this.option2,
  });
}

int currentID = 0;
int currentEnd;

List<Situation> story = [
  Situation(
    text:
        "You head back in the plane which seems weirdly untouched as if it intentionally ended up here, and think of what to do next.",
    choice_1_id: 1,
    choice_2_id: 2,
    option1: "Search the plane.",
    option2: "Try phoning for help.",
  ),
  Situation(
    text:
        "You\'re starting to panic as the pain in your head pulses stronger and stronger. You find a white handgun with one bullet in it. As you grab it you start hearing inaudible whispers and screams.",
    choice_1_id: 3,
    choice_2_id: 4,
    option1: "SHOOT yourself in the head.",
    option2: "THROW IT!",
  ),
  Situation(
    text:
        "As you were taking your phone out, it started ringing. The moment you anwsered, you could hear a voice shout \'START THE PLANE\' and a terrifying devilish scream in the background. You run to the cockpit and find a white gun on the floor.",
    choice_1_id: 5,
    choice_2_id: 6,
    option1: "Try hitting the buttons in hopes of hearing the engine start!",
    option2: "Quickly grab the gun and run outside!",
  ),
  Situation(
    text:
        "You pull the trigger and hear the gun go off. You\'re aggressively woken up covered in cold sweat. Sitting on your bed in disbelief, \'What the fuck\', you think to yourself. You end up thinking about the fact that you tried to kill yourself for the next couple of days until you forget all about it yet again...",
    choice_1_id: null,
    choice_2_id: null,
    option1: "",
    option2: "",
  ),
  Situation(
    text:
        "Your phone started to ring when the gun hit the floor. When you picked up, all you heared was quiet yet agressive breating and something driping. The line breaks and you hear a terrifying devilish scream in the distance. All of a sudden everything turns dark and you wake up in your bed covered in cold sweat and notice blood on your pillow.",
    choice_1_id: null,
    choice_2_id: null,
    option1: "",
    option2: "",
  ),
  Situation(
    text:
        "As you\'re furiously hitting the dashboard, the front lights of the aircraft suddenly turn on. You look up only to find youself in tears of horror as a demonic creature, no words can describe, stands in front of the craft. It screams at you, breaking the front windshield and knocking you unconscious.. You wake up in your bed covered in cold sweat and notice blood on your pillow.",
    choice_1_id: null,
    choice_2_id: null,
    option1: "",
    option2: "",
  ),
  Situation(
    text:
        "As you stand outside, you notice the daylight got covered up by a snowstorm and darkness covers everything. You start to hear something approaching fast. You aim your gun at it and at that moment lighting hits and a demonic creature emerges in the light of the lighting. Suddenly you wake up in your bed covered in cold sweat and notice blood on your pillow.",
    choice_1_id: null,
    choice_2_id: null,
    option1: "",
    option2: "",
  ),
];
