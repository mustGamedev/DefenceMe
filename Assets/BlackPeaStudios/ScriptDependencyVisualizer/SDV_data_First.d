   	    ���`�J�EnemyDamage�/ê�C
SoldierMob ��K�n?CBombMob he�B�
CUfoMob ��2C�]C	ArcherMob \JÐ�L�EnemyBullet��.C��/�CountdownTimerh-Bh�1�CoreManagerP
/C����
SpawnEnemy��B��BScoreManager��!�PlayerHealthScoreManager ---> CoreManagerScoreManagerCoreManager   PlayerHealth ---> CoreManagerPlayerHealthCoreManager   CountdownTimer ---> SpawnEnemyCountdownTimer
SpawnEnemy   SoldierMob ---> ScoreManager
SoldierMobScoreManager   BombMob ---> ScoreManagerBombMobScoreManager   UfoMob ---> ScoreManagerUfoMobScoreManager   ArcherMob ---> ScoreManager	ArcherMobScoreManager   EnemyDamage ---> PlayerHealthEnemyDamagePlayerHealth   EnemyBullet ---> PlayerHealthEnemyBulletPlayerHealth   