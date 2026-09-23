.class Lcom/mycompany/app/setting/SettingVideoTap$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingVideoTap;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingVideoTap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingVideoTap$13;->a:Lcom/mycompany/app/setting/SettingVideoTap;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .line 1
    sget v0, Lcom/mycompany/app/setting/SettingVideoTap;->Z1:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingVideoTap$13;->a:Lcom/mycompany/app/setting/SettingVideoTap;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingVideoTap;->D0()V

    .line 6
    .line 7
    .line 8
    iget-object v0, v1, Lcom/mycompany/app/setting/SettingVideoTap;->Q1:[I

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v7, 0x0

    .line 14
    const/4 v8, 0x3

    .line 15
    aput v8, v0, v7

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    aput v8, v0, v2

    .line 19
    .line 20
    const/4 v9, 0x2

    .line 21
    aput v8, v0, v9

    .line 22
    .line 23
    iget-object v0, v1, Lcom/mycompany/app/setting/SettingVideoTap;->R1:[I

    .line 24
    .line 25
    sget v3, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 26
    .line 27
    aput v3, v0, v7

    .line 28
    .line 29
    aput v3, v0, v2

    .line 30
    .line 31
    iget-object v0, v1, Lcom/mycompany/app/setting/SettingVideoTap;->S1:[I

    .line 32
    .line 33
    mul-int/2addr v3, v9

    .line 34
    aput v3, v0, v7

    .line 35
    .line 36
    aput v3, v0, v2

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    move v2, v7

    .line 43
    :goto_0
    if-ge v2, v8, :cond_3

    .line 44
    .line 45
    if-ge v2, v9, :cond_2

    .line 46
    .line 47
    iget-object v3, v1, Lcom/mycompany/app/setting/SettingVideoTap;->J1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 48
    .line 49
    aget-object v3, v3, v2

    .line 50
    .line 51
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 56
    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    iget-object v4, v1, Lcom/mycompany/app/setting/SettingVideoTap;->S1:[I

    .line 60
    .line 61
    aget v4, v4, v2

    .line 62
    .line 63
    const/4 v5, 0x0

    .line 64
    const/4 v6, 0x1

    .line 65
    invoke-virtual/range {v1 .. v6}, Lcom/mycompany/app/setting/SettingVideoTap;->H0(ILandroid/widget/RelativeLayout$LayoutParams;IZZ)Z

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    iget-object v4, v1, Lcom/mycompany/app/setting/SettingVideoTap;->R1:[I

    .line 70
    .line 71
    aget v4, v4, v2

    .line 72
    .line 73
    const/4 v5, 0x0

    .line 74
    const/4 v6, 0x0

    .line 75
    invoke-virtual/range {v1 .. v6}, Lcom/mycompany/app/setting/SettingVideoTap;->H0(ILandroid/widget/RelativeLayout$LayoutParams;IZZ)Z

    .line 76
    .line 77
    .line 78
    :cond_2
    :goto_1
    iget-object v3, v1, Lcom/mycompany/app/setting/SettingVideoTap;->Q1:[I

    .line 79
    .line 80
    aget v3, v3, v2

    .line 81
    .line 82
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/setting/SettingVideoTap;->I0(II)V

    .line 83
    .line 84
    .line 85
    add-int/lit8 v2, v2, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    invoke-virtual {v1, v7}, Lcom/mycompany/app/setting/SettingVideoTap;->G0(Z)V

    .line 89
    .line 90
    .line 91
    return-void
.end method
