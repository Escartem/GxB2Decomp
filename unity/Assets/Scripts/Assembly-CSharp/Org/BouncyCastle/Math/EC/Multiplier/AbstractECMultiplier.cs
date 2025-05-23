namespace Org.BouncyCastle.Math.EC.Multiplier
{
	public abstract class AbstractECMultiplier : ECMultiplier
	{
		public virtual ECPoint Multiply(ECPoint p, BigInteger k)
		{
			return null;
		}

		protected abstract ECPoint MultiplyPositive(ECPoint p, BigInteger k);
	}
}
