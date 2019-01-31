/*
 * Copyright (c) 2010 Google Inc. All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are
 * met:
 * 
 *     * Redistributions of source code must retain the above copyright
 * notice, this list of conditions and the following disclaimer.
 *     * Redistributions in binary form must reproduce the above
 * copyright notice, this list of conditions and the following disclaimer
 * in the documentation and/or other materials provided with the
 * distribution.
 *     * Neither the name of Google Inc. nor the names of its
 * contributors may be used to endorse or promote products derived from
 * this software without specific prior written permission.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 * OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include "config.h"
#include "ScriptCallFrame.h"

#include "InspectorFrontend.h"
#include "InspectorValues.h"
#include <wtf/RefPtr.h>

namespace WebCore {

ScriptCallFrame::ScriptCallFrame(const String& functionName, const String& scriptName, unsigned lineNumber, unsigned column)
    : m_functionName(functionName)
    , m_scriptName(scriptName)
    , m_lineNumber(lineNumber)
    , m_column(column)
{
}

ScriptCallFrame::~ScriptCallFrame()
{
}

bool ScriptCallFrame::isEqual(const ScriptCallFrame& o) const
{
    return m_functionName == o.m_functionName
        && m_scriptName == o.m_scriptName
        && m_lineNumber == o.m_lineNumber
        && m_column == o.m_column;
}

#if ENABLE(INSPECTOR)
PassRefPtr<TypeBuilder::Console::CallFrame> ScriptCallFrame::buildInspectorObject() const
{
    return TypeBuilder::Console::CallFrame::create()
        .setFunctionName(m_functionName)
        .setUrl(m_scriptName)
        .setLineNumber(m_lineNumber)
        .setColumnNumber(m_column)
        .release();
}
#endif

} // namespace WebCore
