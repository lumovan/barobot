/*
 * Copyright (C) 2013 Keisuke SUZUKI
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *       http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * Distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/*
 * This code has built in knowledge of avrdude.
 * Thanks to avrdude coders
 *  Brian S. Dean, Joerg Wunsch, Eric Weddington, Jan-Hinnerk Reichert,
 *  Alex Shepherd, Martin Thomas, Theodore A. Roth, Michael Holzt
 *  Colin O'Flynn, Thomas Fischl, David Hoerl, Michal Ludvig,
 *  Darell Tan, Wolfgang Moser, Ville Voipio, Hannes Weisbach,
 *  Doug Springer, Brett Hagman
 *  and all contributers.
 */

package com.barobot.isp.programmer;

import com.barobot.common.interfaces.serial.IspCommunicator;
import com.barobot.isp.UploadCallBack;

public abstract class UploadProtocol {
    UploadCallBack callback;

    public abstract void setSerial(IspCommunicator comm);
    public abstract void setConfig(AvrConf conf, AvrMem mem);
    public abstract int  open();
    public abstract int  initialize();
    public abstract int  check_sig_bytes();
    public abstract int  paged_write();
    public abstract void disable();

    public void setCallback(UploadCallBack callback) {
        this.callback = callback;
    }
    protected void report_progress(int prog) {
        if(prog > 100) { prog = 100; }
        if(callback == null) return;
        callback.onUploading(prog);
    }
}
