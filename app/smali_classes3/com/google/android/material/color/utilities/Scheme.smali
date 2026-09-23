.class public Lcom/google/android/material/color/utilities/Scheme;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of p1, p1, Lcom/google/android/material/color/utilities/Scheme;

    .line 6
    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0xacab9f

    .line 6
    .line 7
    .line 8
    mul-int/2addr v0, v1

    .line 9
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Scheme{primary=0, onPrimary=0, primaryContainer=0, onPrimaryContainer=0, secondary=0, onSecondary=0, secondaryContainer=0, onSecondaryContainer=0, tertiary=0, onTertiary=0, tertiaryContainer=0, onTertiaryContainer=0, error=0, onError=0, errorContainer=0, onErrorContainer=0, background=0, onBackground=0, surface=0, onSurface=0, surfaceVariant=0, onSurfaceVariant=0, outline=0, outlineVariant=0, shadow=0, scrim=0, inverseSurface=0, inverseOnSurface=0, inversePrimary=0}"

    .line 2
    .line 3
    return-object v0
.end method
