.class Lcom/mycompany/app/setting/SettingVideoSub$25$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingVideoSub$25$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingVideoSub$25$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingVideoSub$25$1$1;->c:Lcom/mycompany/app/setting/SettingVideoSub$25$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVideoSub$25$1$1;->c:Lcom/mycompany/app/setting/SettingVideoSub$25$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingVideoSub$25$1;->c:Lcom/mycompany/app/setting/SettingVideoSub$25;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub$25;->c:Lcom/mycompany/app/setting/SettingVideoSub;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingVideoSub;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    sget-object v2, Lcom/mycompany/app/main/MainConst;->q:[I

    .line 13
    .line 14
    array-length v2, v2

    .line 15
    iget-object v3, v1, Lcom/mycompany/app/setting/SettingVideoSub;->f2:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    invoke-virtual {v1, v3, v2}, Lcom/mycompany/app/setting/SettingVideoSub;->H0(Landroid/widget/LinearLayout;I)[Lcom/mycompany/app/view/MyButtonCheck;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iput-object v3, v1, Lcom/mycompany/app/setting/SettingVideoSub;->g2:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 22
    .line 23
    if-eqz v3, :cond_3

    .line 24
    .line 25
    array-length v3, v3

    .line 26
    if-eq v3, v2, :cond_1

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_1
    const/4 v3, 0x0

    .line 30
    move v4, v3

    .line 31
    :goto_0
    if-ge v4, v2, :cond_3

    .line 32
    .line 33
    iget-object v5, v1, Lcom/mycompany/app/setting/SettingVideoSub;->g2:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 34
    .line 35
    aget-object v5, v5, v4

    .line 36
    .line 37
    sget-object v6, Lcom/mycompany/app/main/MainConst;->q:[I

    .line 38
    .line 39
    aget v7, v6, v4

    .line 40
    .line 41
    invoke-virtual {v5, v7, v7}, Lcom/mycompany/app/view/MyButtonCheck;->m(II)V

    .line 42
    .line 43
    .line 44
    iget-object v5, v1, Lcom/mycompany/app/setting/SettingVideoSub;->g2:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 45
    .line 46
    aget-object v5, v5, v4

    .line 47
    .line 48
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_white_24:I

    .line 49
    .line 50
    invoke-virtual {v5, v7, v3}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 51
    .line 52
    .line 53
    iget-object v5, v1, Lcom/mycompany/app/setting/SettingVideoSub;->g2:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 54
    .line 55
    aget-object v5, v5, v4

    .line 56
    .line 57
    const v7, -0xc0c0c1

    .line 58
    .line 59
    .line 60
    sget v8, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 61
    .line 62
    invoke-virtual {v5, v7, v8}, Lcom/mycompany/app/view/MyButtonCheck;->n(II)V

    .line 63
    .line 64
    .line 65
    iget-object v5, v1, Lcom/mycompany/app/setting/SettingVideoSub;->g2:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 66
    .line 67
    aget-object v5, v5, v4

    .line 68
    .line 69
    new-instance v7, Lcom/mycompany/app/setting/SettingVideoSub$27;

    .line 70
    .line 71
    invoke-direct {v7, v1, v4, v2}, Lcom/mycompany/app/setting/SettingVideoSub$27;-><init>(Lcom/mycompany/app/setting/SettingVideoSub;II)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5, v7}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    .line 76
    .line 77
    iget v5, v1, Lcom/mycompany/app/setting/SettingVideoSub;->x2:I

    .line 78
    .line 79
    aget v6, v6, v4

    .line 80
    .line 81
    if-ne v5, v6, :cond_2

    .line 82
    .line 83
    iget-object v5, v1, Lcom/mycompany/app/setting/SettingVideoSub;->g2:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 84
    .line 85
    aget-object v5, v5, v4

    .line 86
    .line 87
    const/4 v6, 0x1

    .line 88
    invoke-virtual {v5, v6, v3}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    iget-object v5, v1, Lcom/mycompany/app/setting/SettingVideoSub;->g2:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 93
    .line 94
    aget-object v5, v5, v4

    .line 95
    .line 96
    invoke-virtual {v5, v3, v3}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 97
    .line 98
    .line 99
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_3
    :goto_2
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingVideoSub$25;->c:Lcom/mycompany/app/setting/SettingVideoSub;

    .line 103
    .line 104
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingVideoSub;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 105
    .line 106
    new-instance v1, Lcom/mycompany/app/setting/SettingVideoSub$25$1$1$1;

    .line 107
    .line 108
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingVideoSub$25$1$1$1;-><init>(Lcom/mycompany/app/setting/SettingVideoSub$25$1$1;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 112
    .line 113
    .line 114
    return-void
.end method
