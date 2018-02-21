//
//  ApplyIndex.swift
//  LMTtest
//
//  Created by std_1210_18 on 2017. 6. 6..
//  Copyright © 2017년 Junhyeong Cho. All rights reserved.
//

import Foundation


class ApplyIndex: NSObject, NSCoding, NSCopying {
    private static let namesKey = "namesKey"
    private static let gendersKey = "gendersKey"
    private static let brithdaysKey = "brithdaysKey"
    private static let jobsKey = "jobsKey"
    private static let marryedsKey = "marryedsKey"
    
    var names: [String]?
    var genders: [String]?
    var brithdays: [String]?
    var jobs: [String]?
    var marryeds: [String]?

    
    override init() {
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        names = aDecoder.decodeObject(forKey: ApplyIndex.namesKey) as? [String]
        genders = aDecoder.decodeObject(forKey: ApplyIndex.gendersKey) as? [String]
        brithdays = aDecoder.decodeObject(forKey: ApplyIndex.brithdaysKey) as? [String]
        jobs = aDecoder.decodeObject(forKey: ApplyIndex.jobsKey) as? [String]
        marryeds = aDecoder.decodeObject(forKey: ApplyIndex.marryedsKey) as? [String]
    }
    
    func encode(with aCoder: NSCoder) {
        if let saveNames = names {
            aCoder.encode(saveNames, forKey: ApplyIndex.namesKey)
        }
        if let saveGenders = genders {
            aCoder.encode(saveGenders, forKey: ApplyIndex.gendersKey)
        }
        if let saveBrithdays = brithdays {
            aCoder.encode(saveBrithdays, forKey: ApplyIndex.brithdaysKey)
        }
        if let saveJobs = jobs {
            aCoder.encode(saveJobs, forKey: ApplyIndex.jobsKey)
        }
        if let saveMarryeds = marryeds {
            aCoder.encode(saveMarryeds, forKey: ApplyIndex.marryedsKey)
        }
        
    }
    
    func  copy(with zone: NSZone? = nil) -> Any {
        let copy = ApplyIndex()
        if let namesToCopy = names {
            var newNames = Array<String>()
            for name in namesToCopy {
                newNames.append(name)
            }
            copy.names = newNames
        }
        
        if let gendersToCopy = genders {
            var newGenders = Array<String>()
            for gender in gendersToCopy {
                newGenders.append(gender)
            }
            copy.genders = newGenders
        }
        
        if let brithdaysToCopy = brithdays {
            var newBrithday = Array<String>()
            for brithday in brithdaysToCopy {
                newBrithday.append(brithday)
            }
            copy.brithdays = newBrithday
        }
        
        if let jobsToCopy = jobs {
            var newJobs = Array<String>()
            for job in jobsToCopy {
                newJobs.append(job)
            }
            copy.jobs = newJobs
        }
        
        if let marryedsToCopy = marryeds {
            var newMarryeds = Array<String>()
            for marryed in marryedsToCopy {
                newMarryeds.append(marryed)
            }
            copy.marryeds = newMarryeds
        }
        
        return copy
    }
    
}
