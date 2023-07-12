package DiamonShop.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dao.SlidesDao;
import DiamonShop.Entity.Slides;

@Service
public class SlideServiceImpl implements ISlideService{

	@Autowired
	SlidesDao slideDao = new SlidesDao();
	
	public int CountSlide() {
		
		return slideDao.CountSlide(); 
	}

	public int AddSlide(Slides slide) {
		
		return slideDao.AddSlide(slide);
	}

	public int DeleteSlide(int id) {
		
		return slideDao.DeleteSlide(id);
	}

}
