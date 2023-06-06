class CharacterCreateInputDto{
  public string Name { get; set; }
  public string Surname { get; set; }
  public int Age { get; set; }
  public string Story { get; set; }
  public int GameId { get; set; }
  public int RaceId { get; set; }
  public List<StatisticWithValueCreateDto> Statistics { get; set; }
  public string Characteristics { get; set; }

}