namespace DragonBones
{
	public class TimelineData : BaseObject
	{
		public TimelineType type;

		public uint offset;

		public int frameIndicesOffset;

		protected override void _OnClear()
		{
		}
	}
}
