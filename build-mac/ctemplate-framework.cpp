//
//  ctemplate-framework.cpp
//  ctemplate
//
//  Created by Casey Marshall on 7/4/22.
//  Copyright © 2022 Hoa V. DINH. All rights reserved.
//

#include "template.h"
#include "template_annotator.h"
#include "template_cache.h"
#include "template_dictionary.h"
#include "template_modifiers.h"
#include "template_namelist.h"
#include "template_pathops.h"
#include "template_string.h"
#include "template_dictionary_interface.h"
#include "find_ptr.h"
#include "per_expand_data.h"
#include "str_ref.h"

__attribute__((constructor))
static void InitializeCtemplateFramework() {
    static bool initialized = false;
    if (!initialized) {
        initialized = true;
    }
}
