.class public interface abstract Lj$/time/chrono/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/m;
.implements Ljava/lang/Comparable;


# virtual methods
.method public abstract getChronology()Lj$/time/chrono/m;
.end method

.method public abstract getOffset()Lj$/time/ZoneOffset;
.end method

.method public abstract getZone()Lj$/time/ZoneId;
.end method

.method public abstract s(Lj$/time/ZoneId;)Lj$/time/chrono/j;
.end method

.method public abstract toEpochSecond()J
.end method

.method public abstract toLocalDate()Lj$/time/chrono/b;
.end method

.method public abstract toLocalDateTime()Lj$/time/chrono/e;
.end method

.method public abstract toLocalTime()Lj$/time/k;
.end method
