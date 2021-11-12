package edu.javavt19.service;

import edu.javavt19.dao.CarModelDAO;
import edu.javavt19.model.CarModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;

/**
 * Этот класс реализует hibernate интерпритацию CarModelService
 */
@Service("carModelHibernateService")
@Transactional(readOnly=false, value = "hibernateTransactionManager")
public class CarModelHibernateServiceImpl implements CarModelService {
    @Autowired
    @Qualifier("getCarModelHibernateDAO")
    private CarModelDAO carModelDAO;

    /**
     *  Добавляет новую model машины в базу данных или обновляет существующий.
     * @param item - Элемент, который необходимо добавить или обновить.
     */
    public void saveOrUpdate(CarModel item) {
        carModelDAO.saveOrUpdate(item);
    }

    /**
     *  Удаляет model по id из базы данных.
     * @param itemId - id элемента model для удаления
     */
    public void delete(int itemId) {
        carModelDAO.delete(itemId);
    }

    /**
     *  Возвращает элемент из таблицы model.
     * @param itemId - id элемента model.
     */
    public CarModel get(int itemId) {
        return carModelDAO.get(itemId);
    }

    /**
     *  Метод для возврата всех элементов таблицы model.
     *  @return List объектов model
     */
    public List<CarModel> list() {
        return carModelDAO.list();
    }
}