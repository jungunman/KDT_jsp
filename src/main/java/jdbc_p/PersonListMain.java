package jdbc_p;

import java.util.ArrayList;

public class PersonListMain {

	public static void main(String[] args) {
		System.out.println("PersonListMain 실행");
		ArrayList<PersonDTO> persons = new PersonDAO().list();
		
		//System.out.println(persons.size());
		for (PersonDTO dto : persons) {
			System.out.println(dto);
		}
	}

}
