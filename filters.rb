# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
  @candidates.each do |
    candidate|
    if candidate[:id] == id
      return candidate
    end
  end
  return nil
end
  
def experienced?(candidate)
  if candidate[:years_of_experience] >= 2
    return true
  else 
    return false
  end
end
  

def qualified_candidates(candidates)
  qualified_candidates = []
  candidates.each do |candidate|
    if experienced?(candidate) && candidate[:github_points] >= 100 && (candidate[:languages].include?("Ruby") || candidate[:languages].include?("Python")) && (Date.today - candidate[:date_applied]).to_i <= 15 && candidate[:age] > 17
      qualified_candidates.push(candidate)
    end
  end
  return qualified_candidates
end  

def ordered_by_qualifications(candidates)
  candidates.sort_by do |candidate|
    [-candidate[:years_of_experience], -candidate[:github_points]]
  end
end

  