//package com.litmus7.shopmate.profile.repository;
//
//import com.litmus7.shopmate.profile.repositorydao.WishListRepositoryDao;
//import com.litmus7.shopmate.profile.dto.WishListDto;
//import org.springframework.stereotype.Repository;
//
//import javax.persistence.EntityManager;
//import javax.persistence.PersistenceContext;
//import javax.transaction.Transactional;
//import java.util.List;
//
//@Transactional
//@Repository
//public class WishListRepository implements WishListRepositoryDao {
//
//    @PersistenceContext
//    private EntityManager entityManager;
//
//    @Override
//    public WishListDto addWishlist(WishListDto wishList) {
//
//        entityManager.persist(wishList);
//        return wishList; //TODO return added list.
//    }
//
//}
