package org.slf4j.helpers;

import org.slf4j.ILoggerFactory;
import org.slf4j.Logger;

/* loaded from: classes4.dex */
public class NOPLoggerFactory implements ILoggerFactory {
    @Override // org.slf4j.ILoggerFactory
    public final Logger a(String str) {
        return NOPLogger.f22692c;
    }
}
