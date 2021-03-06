using UnityEngine;
using UnityEngine.UI;
using Zenject;

public class CountdownTimer : MonoBehaviour
{
    [Header("Debug")]
    [SerializeField] private float _countdownTimer;
    
    [Header("Set start numer")]
    [SerializeField] private float _countdownNumber = 3f;
    
    private Text _countdownText;
    [Inject] private SpawnEnemy z_spawnEnemy; //zenjected

    private void Awake()
    {
        _countdownText = transform.GetChild(1).GetComponent<Text>();
        _countdownTimer = _countdownNumber;
    }
    
    private void Update()
    {
        CountDownStart();

        if(_countdownTimer < 0f)
        {
            _countdownTimer = _countdownNumber + 1;
            z_spawnEnemy.SpawnNewMob();
        }
    }
    private void CountDownStart()
    {
        _countdownText.text = Mathf.FloorToInt(_countdownTimer).ToString();
        _countdownTimer -= Time.deltaTime;
    }
}