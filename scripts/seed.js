const { connectDB, mongoose } = require('../src/models/db');
const { Conta } = require('../src/models/contasModel');
const { Usuario } = require('../src/models/usuariosModel');

const seedData = async () => {
  try {
    console.log('🔄 Conectando ao MongoDB Atlas...');
    await connectDB();
    
    console.log('✅ Conectado com sucesso!');
    console.log('🔄 Iniciando populacao de dados...');

    // Limpar dados existentes
    console.log('🧹 Limpando dados existentes...');
    await Conta.deleteMany({});
    await Usuario.deleteMany({});

    // Criar contas
    console.log('💰 Criando contas...');
    const contas = await Conta.create([
      {
        titular: 'Joao Silva',
        saldo: 1000.00,
        ativa: true
      },
      {
        titular: 'Maria Santos',
        saldo: 2500.00,
        ativa: true
      },
      {
        titular: 'Pedro Oliveira',
        saldo: 500.00,
        ativa: true
      },
      {
        titular: 'Ana Costa',
        saldo: 3000.00,
        ativa: false
      }
    ]);

    console.log(`✅ ${contas.length} contas criadas com sucesso`);

    // Criar usuarios
    console.log('👤 Criando usuarios...');
    const usuarios = await Usuario.create([
      {
        username: 'admin',
        senha: 'admin123'
      },
      {
        username: 'usuario',
        senha: 'senha123'
      }
    ]);

    console.log(`✅ ${usuarios.length} usuarios criados com sucesso`);

    console.log('\n🎉 Dados populados com sucesso!');
    console.log('\n📊 Resumo dos dados criados:');
    console.log('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
    
    console.log('\n💰 CONTAS:');
    contas.forEach((conta, index) => {
      console.log(`  ${index + 1}. ${conta.titular}`);
      console.log(`     Saldo: R$ ${conta.saldo.toFixed(2)}`);
      console.log(`     Status: ${conta.ativa ? '✅ Ativa' : '❌ Inativa'}`);
      console.log(`     ID: ${conta._id}`);
    });

    console.log('\n👤 USUARIOS:');
    usuarios.forEach((usuario, index) => {
      console.log(`  ${index + 1}. ${usuario.username}`);
      console.log(`     ID: ${usuario._id}`);
    });

    console.log('\n🚀 Pronto para usar!');
    console.log('   - API REST: http://localhost:3000/api-docs');
    console.log('   - API GraphQL: http://localhost:3001/graphql');
    console.log('\n💡 Dica: Use os IDs das contas para testar transferencias');

    process.exit(0);
  } catch (error) {
    console.error('\n❌ Erro ao popular dados:');
    console.error('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
    console.error(error.message);
    
    if (error.name === 'MongoNetworkError') {
      console.error('\n💡 Possiveis solucoes:');
      console.error('   1. Verifique se o MongoDB Atlas esta acessivel');
      console.error('   2. Confirme se o IP esta na whitelist do Atlas');
      console.error('   3. Verifique a string de conexao no arquivo .env');
    }
    
    if (error.name === 'MongoServerSelectionError') {
      console.error('\n💡 Possiveis solucoes:');
      console.error('   1. Verifique a conectividade de internet');
      console.error('   2. Confirme se o cluster do Atlas esta ativo');
      console.error('   3. Verifique as credenciais no arquivo .env');
    }
    
    process.exit(1);
  }
};

// Executar apenas se chamado diretamente
if (require.main === module) {
  seedData();
}

module.exports = seedData; 