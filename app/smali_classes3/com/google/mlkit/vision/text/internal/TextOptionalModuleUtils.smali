.class public final Lcom/google/mlkit/vision/text/internal/TextOptionalModuleUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method public static a(Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;)[Lcom/google/android/gms/common/Feature;
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->a:[Lcom/google/android/gms/common/Feature;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-interface {p0}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->d()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    const/4 v0, 0x0

    .line 15
    const/4 v1, 0x1

    .line 16
    packed-switch p0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    new-array p0, v1, [Lcom/google/android/gms/common/Feature;

    .line 20
    .line 21
    sget-object v1, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->c:Lcom/google/android/gms/common/Feature;

    .line 22
    .line 23
    aput-object v1, p0, v0

    .line 24
    .line 25
    return-object p0

    .line 26
    :pswitch_0
    new-array p0, v1, [Lcom/google/android/gms/common/Feature;

    .line 27
    .line 28
    sget-object v1, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->e:Lcom/google/android/gms/common/Feature;

    .line 29
    .line 30
    aput-object v1, p0, v0

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_1
    new-array p0, v1, [Lcom/google/android/gms/common/Feature;

    .line 34
    .line 35
    sget-object v1, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->h:Lcom/google/android/gms/common/Feature;

    .line 36
    .line 37
    aput-object v1, p0, v0

    .line 38
    .line 39
    return-object p0

    .line 40
    :pswitch_2
    new-array p0, v1, [Lcom/google/android/gms/common/Feature;

    .line 41
    .line 42
    sget-object v1, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->g:Lcom/google/android/gms/common/Feature;

    .line 43
    .line 44
    aput-object v1, p0, v0

    .line 45
    .line 46
    return-object p0

    .line 47
    :pswitch_3
    new-array p0, v1, [Lcom/google/android/gms/common/Feature;

    .line 48
    .line 49
    sget-object v1, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->f:Lcom/google/android/gms/common/Feature;

    .line 50
    .line 51
    aput-object v1, p0, v0

    .line 52
    .line 53
    return-object p0

    .line 54
    :pswitch_4
    new-array p0, v1, [Lcom/google/android/gms/common/Feature;

    .line 55
    .line 56
    sget-object v1, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->d:Lcom/google/android/gms/common/Feature;

    .line 57
    .line 58
    aput-object v1, p0, v0

    .line 59
    .line 60
    return-object p0

    .line 61
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
