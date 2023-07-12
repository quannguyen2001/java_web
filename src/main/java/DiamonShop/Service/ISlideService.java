package DiamonShop.Service;

import org.springframework.stereotype.Service;

import DiamonShop.Entity.Slides;

@Service
public interface ISlideService {
	
	public int CountSlide();
	
	public int AddSlide(Slides slide);
	
	public int DeleteSlide(int id);
}
