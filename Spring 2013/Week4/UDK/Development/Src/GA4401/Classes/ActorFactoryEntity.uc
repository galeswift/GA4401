class ActorFactoryEntity extends ActorFactoryMover;

// We ignore collisions from entities on the same team
var() int EntityTeam;

/** Allows script to modify new actor */
simulated event PostCreateActor(Actor NewActor, optional const SeqAct_ActorFactory ActorFactoryData)
{
	Super.PostCreateActor(NewActor, ActorFactoryData);
	GAEntity(NewActor).EntityTeam = EntityTeam;
}

DefaultProperties
{
	MenuName="Add Generic Game Entity"
	NewActorClass=class'GA4401.GAEntity'
}
