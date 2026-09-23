.class public final Lcom/mycompany/app/pref/LinkMenuPrefs;
.super Ljava/lang/Object;
.source "LinkMenuPrefs.java"

.field private final static KEY_MASK_NEW:Ljava/lang/String; = "mUseLink8"

.field private final static KEY_MASK_OLD:Ljava/lang/String; = "mUseLink7"

.field private final static KEY_ORDER_NEW:Ljava/lang/String; = "mLinkOrder7"

.field private final static KEY_ORDER_OLD:Ljava/lang/String; = "mLinkOrder6"

.field private final static NEW_DEFAULT_MASK:I = 16382

.field private final static NEW_ITEM_BIT:I = 8192

.field private final static OLD_DEFAULT_MASK:I = 8190

.method private constructor <init>()V
  .registers 1
  .line 22
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 23
    return-void
.end method

.method private static has(Lcom/mycompany/app/pref/PrefCore;Ljava/lang/String;)Z
  .registers 2
  .line 28
    if-eqz p0, :L1
    iget-object p0, p0, Lcom/mycompany/app/pref/PrefCore;->e:Lcom/google/gson/JsonObject;
    if-eqz p0, :L1
    invoke-virtual { p0, p1 }, Lcom/google/gson/JsonObject;->r(Ljava/lang/String;)Lcom/google/gson/JsonElement;
    move-result-object p0
    if-nez p0, :L0
    goto :L1
  :L0
  .line 31
    instance-of p0, p0, Lcom/google/gson/JsonNull;
    xor-int/lit8 p0, p0, 1
    return p0
  :L1
  .line 29
    const/4 p0, 0
    return p0
.end method

.method public static mask(Lcom/mycompany/app/pref/PrefCore;)I
  .registers 6
  .line 52
    const-string v0, "mUseLink8"
    invoke-static { p0, v0 }, Lcom/mycompany/app/pref/LinkMenuPrefs;->has(Lcom/mycompany/app/pref/PrefCore;Ljava/lang/String;)Z
    move-result v1
    const/16 v2, 8190
    const/16 v3, 16382
    const-string v4, "mUseLink7"
    if-eqz v1, :L1
  .line 53
    invoke-virtual { p0, v0, v3 }, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I
    move-result v1
  .line 55
    if-ne v1, v3, :L0
    invoke-static { p0, v4 }, Lcom/mycompany/app/pref/LinkMenuPrefs;->has(Lcom/mycompany/app/pref/PrefCore;Ljava/lang/String;)Z
    move-result v3
    if-eqz v3, :L0
  .line 56
    invoke-virtual { p0, v4, v2 }, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I
    move-result v2
    or-int/lit16 v2, v2, 8192
  .line 57
    if-eq v2, v1, :L0
  .line 58
    invoke-virtual { p0, v2, v0 }, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V
  .line 59
    invoke-virtual { p0 }, Lcom/mycompany/app/pref/PrefCore;->a()V
  .line 60
    return v2
  :L0
  .line 63
    return v1
  :L1
  .line 65
    invoke-static { p0, v4 }, Lcom/mycompany/app/pref/LinkMenuPrefs;->has(Lcom/mycompany/app/pref/PrefCore;Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L2
  .line 66
    invoke-virtual { p0, v4, v2 }, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I
    move-result v0
    or-int/lit16 v0, v0, 8192
  .line 67
    invoke-static { p0, v0 }, Lcom/mycompany/app/pref/LinkMenuPrefs;->persistMask(Lcom/mycompany/app/pref/PrefCore;I)V
  .line 68
    return v0
  :L2
  .line 70
    return v3
.end method

.method public static order(Lcom/mycompany/app/pref/PrefCore;)Ljava/lang/String;
  .registers 8
  .line 75
    const-string v0, "mLinkOrder7"
    const-string v1, ""
    invoke-virtual { p0, v0, v1 }, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
  .line 76
    invoke-static { v0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v2
    const-string v3, "/"
    if-nez v2, :L0
  .line 77
    invoke-virtual { v0, v3 }, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v2
  .line 78
    array-length v2, v2
    const/16 v4, 13
    if-ne v2, v4, :L0
  .line 79
    return-object v0
  :L0
  .line 82
    const-string v0, "mLinkOrder6"
    invoke-virtual { p0, v0, v1 }, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
  .line 83
    invoke-static { v0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v2
    if-eqz v2, :L1
  .line 84
    return-object v1
  :L1
  .line 86
    invoke-virtual { v0, v3 }, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v0
  .line 87
    array-length v2, v0
    const/16 v3, 12
    if-eq v2, v3, :L2
  .line 88
    return-object v1
  :L2
  .line 90
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
  .line 91
    nop
  .line 92
    const/4 v2, 0
    move v3, v2
  :L3
    array-length v4, v0
    const-string v5, "/13"
    if-ge v2, v4, :L6
  .line 93
    if-lez v2, :L4
  .line 94
    const/16 v4, 47
    invoke-virtual { v1, v4 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
  :L4
  .line 96
    aget-object v4, v0, v2
    invoke-virtual { v1, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 97
    if-nez v3, :L5
    const-string v4, "8"
    aget-object v6, v0, v2
    invoke-virtual { v4, v6 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :L5
  .line 98
    invoke-virtual { v1, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 99
    const/4 v3, 1
  :L5
  .line 92
    add-int/lit8 v2, v2, 1
    goto :L3
  :L6
  .line 102
    if-nez v3, :L7
  .line 103
    invoke-virtual { v1, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L7
  .line 105
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  .line 106
    invoke-static { p0, v0 }, Lcom/mycompany/app/pref/LinkMenuPrefs;->persistOrder(Lcom/mycompany/app/pref/PrefCore;Ljava/lang/String;)V
  .line 107
    return-object v0
.end method

.method private static persistMask(Lcom/mycompany/app/pref/PrefCore;I)V
  .registers 4
  .line 35
    if-eqz p0, :L1
    const-string v0, "mUseLink8"
    invoke-static { p0, v0 }, Lcom/mycompany/app/pref/LinkMenuPrefs;->has(Lcom/mycompany/app/pref/PrefCore;Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :L0
    goto :L1
  :L0
  .line 38
    invoke-virtual { p0, p1, v0 }, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V
  .line 39
    invoke-virtual { p0 }, Lcom/mycompany/app/pref/PrefCore;->a()V
  .line 40
    return-void
  :L1
  .line 36
    return-void
.end method

.method private static persistOrder(Lcom/mycompany/app/pref/PrefCore;Ljava/lang/String;)V
  .registers 4
  .line 43
    if-eqz p0, :L1
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-nez v0, :L1
    const-string v0, "mLinkOrder7"
    invoke-static { p0, v0 }, Lcom/mycompany/app/pref/LinkMenuPrefs;->has(Lcom/mycompany/app/pref/PrefCore;Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :L0
    goto :L1
  :L0
  .line 46
    invoke-virtual { p0, v0, p1 }, Lcom/mycompany/app/pref/PrefCore;->p(Ljava/lang/String;Ljava/lang/String;)V
  .line 47
    invoke-virtual { p0 }, Lcom/mycompany/app/pref/PrefCore;->a()V
  .line 48
    return-void
  :L1
  .line 44
    return-void
.end method
