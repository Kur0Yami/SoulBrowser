.class Lcom/mycompany/app/web/WebViewActivity$320;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$320;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$320;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->Q4()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v2, p0, Lcom/mycompany/app/web/WebViewActivity$320;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 3
    .line 4
    if-eqz p2, :cond_9

    .line 5
    .line 6
    if-eq p2, v0, :cond_8

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    const/4 v8, 0x3

    .line 10
    const/4 v9, 0x0

    .line 11
    if-eq p2, v1, :cond_4

    .line 12
    .line 13
    if-eq p2, v8, :cond_1

    .line 14
    .line 15
    const/4 p1, 0x4

    .line 16
    if-eq p2, p1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-boolean p1, Lcom/mycompany/app/pref/PrefZtwo;->y:Z

    .line 20
    .line 21
    xor-int/2addr p1, v0

    .line 22
    sput-boolean p1, Lcom/mycompany/app/pref/PrefZtwo;->y:Z

    .line 23
    .line 24
    iget-object p2, v2, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 25
    .line 26
    const/16 v1, 0x10

    .line 27
    .line 28
    const-string v3, "mQuickDown2"

    .line 29
    .line 30
    invoke-static {v1, p2, v3, p1}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    iget-object p1, v2, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    iget-object p1, p1, Lcom/mycompany/app/web/WebNestView;->Z0:Lcom/mycompany/app/quick/QuickView;

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/mycompany/app/quick/QuickView;->i()V

    .line 42
    .line 43
    .line 44
    return v0

    .line 45
    :cond_1
    iget-object p1, v2, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 46
    .line 47
    if-nez p1, :cond_3

    .line 48
    .line 49
    :cond_2
    :goto_0
    return v0

    .line 50
    :cond_3
    iput-boolean v9, v2, Lcom/mycompany/app/web/WebViewActivity;->k9:Z

    .line 51
    .line 52
    invoke-virtual {v2, v9}, Lcom/mycompany/app/web/WebViewActivity;->E7(Z)V

    .line 53
    .line 54
    .line 55
    new-instance p1, Landroid/content/Intent;

    .line 56
    .line 57
    iget-object p2, v2, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 58
    .line 59
    const-class v1, Lcom/mycompany/app/quick/QuickAdd;

    .line 60
    .line 61
    invoke-direct {p1, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, p1, v9}, Lcom/mycompany/app/web/WebViewActivity;->t0(Landroid/content/Intent;I)V

    .line 65
    .line 66
    .line 67
    return v0

    .line 68
    :cond_4
    iget-object p2, v2, Lcom/mycompany/app/web/WebViewActivity;->g6:Lcom/mycompany/app/view/MyPopupMenu;

    .line 69
    .line 70
    if-eqz p2, :cond_5

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_5
    invoke-virtual {v2}, Lcom/mycompany/app/web/WebViewActivity;->J3()V

    .line 74
    .line 75
    .line 76
    if-nez p1, :cond_6

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_6
    const/4 p2, 0x0

    .line 80
    iput-object p2, v2, Lcom/mycompany/app/web/WebViewActivity;->P5:Landroid/net/Uri;

    .line 81
    .line 82
    new-instance v5, Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .line 86
    .line 87
    new-instance p2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 88
    .line 89
    sget v1, Lnet/kaki87/soul2/testing/R$string;->do_change:I

    .line 90
    .line 91
    invoke-direct {p2, v9, v1}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    new-instance p2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 98
    .line 99
    sget v1, Lnet/kaki87/soul2/testing/R$string;->not_used:I

    .line 100
    .line 101
    invoke-direct {p2, v0, v1}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    new-instance v1, Lcom/mycompany/app/view/MyPopupMenu;

    .line 108
    .line 109
    iget-object v3, v2, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 110
    .line 111
    iget-boolean p2, v2, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 112
    .line 113
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->k5(Z)Z

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    new-instance v7, Lcom/mycompany/app/web/WebViewActivity$327;

    .line 118
    .line 119
    invoke-direct {v7, v2}, Lcom/mycompany/app/web/WebViewActivity$327;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 120
    .line 121
    .line 122
    move-object v4, p1

    .line 123
    invoke-direct/range {v1 .. v7}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 124
    .line 125
    .line 126
    iput-object v1, v2, Lcom/mycompany/app/web/WebViewActivity;->g6:Lcom/mycompany/app/view/MyPopupMenu;

    .line 127
    .line 128
    iput v8, v1, Lcom/mycompany/app/view/MyPopupMenu;->m:I

    .line 129
    .line 130
    iput-object v1, v2, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 131
    .line 132
    iget-object p1, v2, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 133
    .line 134
    if-nez p1, :cond_7

    .line 135
    .line 136
    :goto_1
    return v9

    .line 137
    :cond_7
    new-instance p2, Lcom/mycompany/app/web/WebViewActivity$328;

    .line 138
    .line 139
    invoke-direct {p2, v2}, Lcom/mycompany/app/web/WebViewActivity$328;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 143
    .line 144
    .line 145
    return v9

    .line 146
    :cond_8
    new-instance p1, Landroid/content/Intent;

    .line 147
    .line 148
    iget-object p2, v2, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 149
    .line 150
    const-class v1, Lcom/mycompany/app/setting/SettingNews;

    .line 151
    .line 152
    invoke-direct {p1, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2, p1}, Lcom/mycompany/app/web/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 156
    .line 157
    .line 158
    return v0

    .line 159
    :cond_9
    new-instance p1, Landroid/content/Intent;

    .line 160
    .line 161
    iget-object p2, v2, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 162
    .line 163
    const-class v1, Lcom/mycompany/app/setting/SettingQuick;

    .line 164
    .line 165
    invoke-direct {p1, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    .line 167
    .line 168
    const/16 p2, 0x21

    .line 169
    .line 170
    invoke-virtual {v2, p1, p2}, Lcom/mycompany/app/web/WebViewActivity;->t0(Landroid/content/Intent;I)V

    .line 171
    .line 172
    .line 173
    return v0
.end method
