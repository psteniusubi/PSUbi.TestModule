namespace PSUbi.TestModule.Tests
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestMethod1()
        {
            var c = new Class1();
            var hello = c.HelloWorld();
            Assert.IsNotNull(hello);
            Console.WriteLine(hello);
            Assert.IsTrue(OperatingSystem.IsLinux() || OperatingSystem.IsWindows());
        }
    }
}