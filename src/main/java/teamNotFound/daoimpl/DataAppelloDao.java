package teamNotFound.daoimpl;


import java.util.List;

import org.springframework.stereotype.Repository;

import teamNotFound.dao.CrudGenerico;
import teamNotFound.model.DataAppello;

@Repository
public class DataAppelloDao extends CrudGenerico<DataAppello, Integer>{

	public DataAppelloDao () {
		this.classeT=DataAppello.class;
	}
	@SuppressWarnings("unchecked")

	public List<DataAppello> getByFacoltaAndCorso(int idFacolta, int idCorso) {
		try {			
			List<DataAppello> appelli= entity.createQuery("select d from DataAppello d where d.facolta_id = :facolta and d.corso_id = :corso", DataAppello.class)
					.setParameter("facolta", idFacolta)
					.setParameter("corso", idCorso)
					.getResultList();
			return appelli;
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("Errore getAll in DataAppelloDao");
			return null;
		}
	}

	@SuppressWarnings("unchecked")
	public List<DataAppello> getByProfessoreFacoltaAndCorso(int idProfessore, int idFacolta, int idCorso) {
		try {			
			List<DataAppello> appelli= entity.createQuery("select d from DataAppello d where d.facolta_id = :facolta and d.corso_id = :corso and d.professore_id=:professore", DataAppello.class)
					.setParameter("facolta", idFacolta)
					.setParameter("corso", idCorso)
					.setParameter("professore", idProfessore)
					.getResultList();
			return appelli;
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("Errore getAll in DataAppelloDao");
			return null;
		}
	}

	public DataAppello getByIdWithPrenotazioni(int id) {
		// TODO Auto-generated method stub
		DataAppello dataAppello=entity.find(DataAppello.class, id);
		dataAppello.getPrenotazioni().size();
		return dataAppello;
	}

}
