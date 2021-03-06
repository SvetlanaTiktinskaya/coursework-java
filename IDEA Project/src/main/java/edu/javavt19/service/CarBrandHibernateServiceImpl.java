package edu.javavt19.service;

import edu.javavt19.dao.CarBrandDAO;
import edu.javavt19.model.CarBrand;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;

/**
 * Этот класс реализует hibernate интерпритацию CarBrandService
 */
@Service("carBrandHibernateService")
@Transactional(readOnly=false, value = "hibernateTransactionManager")
public class CarBrandHibernateServiceImpl implements CarBrandService {
    @Autowired
    @Qualifier("getCarBrandHibernateDAO")
    private CarBrandDAO carBrandDAO;

    /**
     *  Добавляет новый brand машины в базу данных или обновляет существующий.
     * @param item - Элемент, который необходимо добавить или обновить.
     */
    public void saveOrUpdate(CarBrand item) {
        carBrandDAO.saveOrUpdate(item);
    }

    /**
     *  Удаляет brand по id из базы данных.
     * @param itemId - id элемента brand для удаления
     */
    public void delete(int itemId) {
        carBrandDAO.delete(itemId);
    }

    /**
     *  Возвращает элемент из таблицы brand.
     * @param itemId - id элемента brand.
     */
    public CarBrand get(int itemId) {
        return carBrandDAO.get(itemId);
    }

    /**
     *  Метод для возврата всех элементов таблицы brand
     *  @return List объектов brand
     */
    public List<CarBrand> list() {
        return carBrandDAO.list();
    }
}