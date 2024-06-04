package common_Login;

public class ScanChk {
	// String값이 매개변수로 들어왔을 때 Q/q가 맞으면 true를 반환하는 메소드
		public static boolean Qchk(String read01) {
			boolean Q = false;
			if (((read01.equalsIgnoreCase("Q"))) && read01.length() == 1) {
				Q = true;
			}
			return Q;
		}
}
