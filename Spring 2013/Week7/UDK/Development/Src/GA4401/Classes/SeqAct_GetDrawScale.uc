class SeqAct_GetDrawScale extends SequenceAction;

var float DrawScaleFloat;
var vector DrawScale;

event Activated()
{
	local int i;
	Super.Activated();

	PublishLinkedVariableValues();

	for( i=0 ; i<Targets.Length; i++ )
	{
		if( Actor(Targets[i]) != none )
		{
			DrawScale = Actor(Targets[i]).DrawScale3D;
			DrawScaleFloat = Actor(Targets[i]).DrawScale;
		}
	}

	PopulateLinkedVariableValues();
}

DefaultProperties
{
	bCallHandler=false
	ObjName="Get Draw Scale"
	ObjCategory="Actor"
	VariableLinks(1)=(ExpectedType=class'SeqVar_Vector',LinkDesc="DrawScale",PropertyName=DrawScale)
	VariableLinks(2)=(ExpectedType=class'SeqVar_Float',LinkDesc="DrawScale Float",PropertyName=DrawScaleFloat)
}
