describe 'the front page', type: :feature do

  before :each do
    visit '/'
  end

  it 'has the correct title' do
    expect(page).to have_title(/Farmers Markets near \d{1,5}/)
  end

  it 'has a heading describing the page' do
    within 'h1' do
      expect(page).to have_content('Markets near')
    end
  end

  it 'lists the east lansing farmers market as the first item' do
    within 'table > tbody > tr:first > td:last' do
     expect(page).to have_content('East Lansing Farmer\'s Market')
    end
  end

  it 'lists the east lansing farmers market as being 1.0 mile away' do
    within 'table > tbody > tr:first > td:first' do
     expect(page).to have_content('1.0')
    end
  end

end