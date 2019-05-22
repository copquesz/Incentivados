package br.com.incentivados.repository;

import br.com.incentivados.model.Empresa;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface EmpresaRepository extends JpaRepository<Empresa, Long>{
	
	boolean existsByCnpj(String cnpj);
	
	Optional<Empresa> findById(Long id);
	Optional<Empresa> findByCnpj(String cnpj);
	Optional<Empresa> findByNomeFantasia(String nomeFantasia);
	
	List<Empresa> findByNomeFantasiaContains(String nomeFantasia);

	@Query(value = "SELECT COUNT(*) FROM empresa_has_projeto WHERE empresa_id = :empresa_id and projeto_id = :projeto_id", nativeQuery = true)
	Long isIndicacao(@Param("empresa_id") Long empresaId, @Param("projeto_id") Long projetoId);

}
