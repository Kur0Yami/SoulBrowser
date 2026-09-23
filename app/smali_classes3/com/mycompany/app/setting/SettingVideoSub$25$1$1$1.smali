.class Lcom/mycompany/app/setting/SettingVideoSub$25$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingVideoSub$25$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingVideoSub$25$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingVideoSub$25$1$1$1;->c:Lcom/mycompany/app/setting/SettingVideoSub$25$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVideoSub$25$1$1$1;->c:Lcom/mycompany/app/setting/SettingVideoSub$25$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingVideoSub$25$1$1;->c:Lcom/mycompany/app/setting/SettingVideoSub$25$1;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingVideoSub$25$1;->c:Lcom/mycompany/app/setting/SettingVideoSub$25;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingVideoSub$25;->c:Lcom/mycompany/app/setting/SettingVideoSub;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    sget-object v1, Lcom/mycompany/app/main/MainConst;->q:[I

    .line 15
    .line 16
    array-length v1, v1

    .line 17
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingVideoSub;->r2:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/setting/SettingVideoSub;->H0(Landroid/widget/LinearLayout;I)[Lcom/mycompany/app/view/MyButtonCheck;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingVideoSub;->s2:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 24
    .line 25
    if-eqz v2, :cond_3

    .line 26
    .line 27
    array-length v2, v2

    .line 28
    if-eq v2, v1, :cond_1

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_1
    const/4 v2, 0x0

    .line 32
    move v3, v2

    .line 33
    :goto_0
    if-ge v3, v1, :cond_3

    .line 34
    .line 35
    iget-object v4, v0, Lcom/mycompany/app/setting/SettingVideoSub;->s2:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 36
    .line 37
    aget-object v4, v4, v3

    .line 38
    .line 39
    sget-object v5, Lcom/mycompany/app/main/MainConst;->q:[I

    .line 40
    .line 41
    aget v6, v5, v3

    .line 42
    .line 43
    invoke-virtual {v4, v6, v6}, Lcom/mycompany/app/view/MyButtonCheck;->m(II)V

    .line 44
    .line 45
    .line 46
    iget-object v4, v0, Lcom/mycompany/app/setting/SettingVideoSub;->s2:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 47
    .line 48
    aget-object v4, v4, v3

    .line 49
    .line 50
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_white_24:I

    .line 51
    .line 52
    invoke-virtual {v4, v6, v2}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 53
    .line 54
    .line 55
    iget-object v4, v0, Lcom/mycompany/app/setting/SettingVideoSub;->s2:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 56
    .line 57
    aget-object v4, v4, v3

    .line 58
    .line 59
    const v6, -0xc0c0c1

    .line 60
    .line 61
    .line 62
    sget v7, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 63
    .line 64
    invoke-virtual {v4, v6, v7}, Lcom/mycompany/app/view/MyButtonCheck;->n(II)V

    .line 65
    .line 66
    .line 67
    iget-object v4, v0, Lcom/mycompany/app/setting/SettingVideoSub;->s2:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 68
    .line 69
    aget-object v4, v4, v3

    .line 70
    .line 71
    new-instance v6, Lcom/mycompany/app/setting/SettingVideoSub$28;

    .line 72
    .line 73
    invoke-direct {v6, v0, v3, v1}, Lcom/mycompany/app/setting/SettingVideoSub$28;-><init>(Lcom/mycompany/app/setting/SettingVideoSub;II)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4, v6}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    iget v4, v0, Lcom/mycompany/app/setting/SettingVideoSub;->C2:I

    .line 80
    .line 81
    aget v5, v5, v3

    .line 82
    .line 83
    if-ne v4, v5, :cond_2

    .line 84
    .line 85
    iget-object v4, v0, Lcom/mycompany/app/setting/SettingVideoSub;->s2:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 86
    .line 87
    aget-object v4, v4, v3

    .line 88
    .line 89
    const/4 v5, 0x1

    .line 90
    invoke-virtual {v4, v5, v2}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    iget-object v4, v0, Lcom/mycompany/app/setting/SettingVideoSub;->s2:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 95
    .line 96
    aget-object v4, v4, v3

    .line 97
    .line 98
    invoke-virtual {v4, v2, v2}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 99
    .line 100
    .line 101
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_3
    :goto_2
    return-void
.end method
