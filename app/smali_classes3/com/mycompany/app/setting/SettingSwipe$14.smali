.class Lcom/mycompany/app/setting/SettingSwipe$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingSwipe;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingSwipe;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingSwipe$14;->a:Lcom/mycompany/app/setting/SettingSwipe;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .line 1
    sget v0, Lcom/mycompany/app/setting/SettingSwipe;->e2:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingSwipe$14;->a:Lcom/mycompany/app/setting/SettingSwipe;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingSwipe;->E0()V

    .line 6
    .line 7
    .line 8
    iget-object v0, v1, Lcom/mycompany/app/setting/SettingSwipe;->S1:[I

    .line 9
    .line 10
    if-eqz v0, :cond_5

    .line 11
    .line 12
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingSwipe;->T1:[I

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    goto :goto_3

    .line 17
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 18
    .line 19
    const/16 v4, 0x1d

    .line 20
    .line 21
    const/4 v5, 0x2

    .line 22
    const/4 v7, 0x0

    .line 23
    if-lt v3, v4, :cond_1

    .line 24
    .line 25
    move v3, v5

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v3, v7

    .line 28
    :goto_0
    sget v4, Lcom/mycompany/app/main/MainApp;->D1:I

    .line 29
    .line 30
    const/4 v6, 0x1

    .line 31
    aput v6, v0, v7

    .line 32
    .line 33
    aput v6, v0, v6

    .line 34
    .line 35
    aput v3, v0, v5

    .line 36
    .line 37
    const/4 v8, 0x3

    .line 38
    aput v3, v0, v8

    .line 39
    .line 40
    const/4 v9, 0x4

    .line 41
    aput v5, v0, v9

    .line 42
    .line 43
    sget v0, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 44
    .line 45
    aput v0, v2, v7

    .line 46
    .line 47
    aput v0, v2, v6

    .line 48
    .line 49
    aput v4, v2, v5

    .line 50
    .line 51
    aput v4, v2, v8

    .line 52
    .line 53
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingSwipe;->U1:[I

    .line 54
    .line 55
    aput v0, v2, v7

    .line 56
    .line 57
    aput v0, v2, v6

    .line 58
    .line 59
    sget v0, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 60
    .line 61
    aput v0, v2, v5

    .line 62
    .line 63
    aput v0, v2, v8

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    move v2, v7

    .line 70
    :goto_1
    const/4 v3, 0x5

    .line 71
    if-ge v2, v3, :cond_4

    .line 72
    .line 73
    if-ge v2, v9, :cond_3

    .line 74
    .line 75
    iget-object v3, v1, Lcom/mycompany/app/setting/SettingSwipe;->K1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 76
    .line 77
    aget-object v3, v3, v2

    .line 78
    .line 79
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    iget-object v4, v1, Lcom/mycompany/app/setting/SettingSwipe;->U1:[I

    .line 86
    .line 87
    aget v4, v4, v2

    .line 88
    .line 89
    const/4 v5, 0x0

    .line 90
    const/4 v6, 0x1

    .line 91
    invoke-virtual/range {v1 .. v6}, Lcom/mycompany/app/setting/SettingSwipe;->I0(ILandroid/view/ViewGroup$LayoutParams;IZZ)Z

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_2
    iget-object v4, v1, Lcom/mycompany/app/setting/SettingSwipe;->T1:[I

    .line 96
    .line 97
    aget v4, v4, v2

    .line 98
    .line 99
    const/4 v5, 0x0

    .line 100
    const/4 v6, 0x0

    .line 101
    invoke-virtual/range {v1 .. v6}, Lcom/mycompany/app/setting/SettingSwipe;->I0(ILandroid/view/ViewGroup$LayoutParams;IZZ)Z

    .line 102
    .line 103
    .line 104
    :cond_3
    :goto_2
    iget-object v3, v1, Lcom/mycompany/app/setting/SettingSwipe;->S1:[I

    .line 105
    .line 106
    aget v3, v3, v2

    .line 107
    .line 108
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/setting/SettingSwipe;->J0(II)V

    .line 109
    .line 110
    .line 111
    add-int/lit8 v2, v2, 0x1

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_4
    invoke-virtual {v1, v7}, Lcom/mycompany/app/setting/SettingSwipe;->H0(Z)V

    .line 115
    .line 116
    .line 117
    :cond_5
    :goto_3
    return-void
.end method
