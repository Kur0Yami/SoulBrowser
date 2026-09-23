.class Lcom/mycompany/app/web/WebViewActivity$76;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyBarView$BarListener;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$76;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(ILandroid/view/View;Z)V
    .locals 7

    .line 1
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$76;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    const/4 p3, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_7

    .line 6
    .line 7
    if-eq p1, p3, :cond_3

    .line 8
    .line 9
    sget p2, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 10
    .line 11
    const/4 p2, 0x2

    .line 12
    if-eq p1, p2, :cond_0

    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :cond_0
    iget-boolean p1, v1, Lcom/mycompany/app/web/WebViewActivity;->Vj:Z

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    goto/16 :goto_0

    .line 21
    .line 22
    :cond_1
    iput-boolean p3, v1, Lcom/mycompany/app/web/WebViewActivity;->Vj:Z

    .line 23
    .line 24
    iget-object p1, v1, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 25
    .line 26
    if-nez p1, :cond_2

    .line 27
    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :cond_2
    new-instance p2, Lcom/mycompany/app/web/WebViewActivity$356;

    .line 31
    .line 32
    invoke-direct {p2, v1}, Lcom/mycompany/app/web/WebViewActivity$356;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_3
    iget-object p1, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 40
    .line 41
    if-nez p1, :cond_4

    .line 42
    .line 43
    goto/16 :goto_0

    .line 44
    .line 45
    :cond_4
    iput-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->k9:Z

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Lcom/mycompany/app/web/WebViewActivity;->E7(Z)V

    .line 48
    .line 49
    .line 50
    iget-boolean p1, v1, Lcom/mycompany/app/web/WebViewActivity;->Uj:Z

    .line 51
    .line 52
    if-eqz p1, :cond_5

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_5
    iput-boolean p3, v1, Lcom/mycompany/app/web/WebViewActivity;->Uj:Z

    .line 56
    .line 57
    iget-object p1, v1, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 58
    .line 59
    if-nez p1, :cond_6

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_6
    new-instance p2, Lcom/mycompany/app/web/WebViewActivity$352;

    .line 63
    .line 64
    invoke-direct {p2, v1}, Lcom/mycompany/app/web/WebViewActivity$352;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_7
    iget-object p1, v1, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 72
    .line 73
    if-nez p1, :cond_8

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_8
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->G5()Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_9

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_9
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->J5()Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_a

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_a
    iget-object p1, v1, Lcom/mycompany/app/web/WebViewActivity;->X5:Lcom/mycompany/app/view/MyPopupMenu;

    .line 91
    .line 92
    if-eqz p1, :cond_b

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_b
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->S4()V

    .line 96
    .line 97
    .line 98
    if-nez p2, :cond_c

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_c
    new-instance v4, Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .line 105
    .line 106
    new-instance p1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 107
    .line 108
    const-string v2, "https://"

    .line 109
    .line 110
    invoke-direct {p1, v0, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(ILjava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    new-instance p1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 117
    .line 118
    const-string v0, "www."

    .line 119
    .line 120
    invoke-direct {p1, p3, v0}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(ILjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 127
    .line 128
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 129
    .line 130
    iget-boolean p1, v1, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 131
    .line 132
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->k5(Z)Z

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    new-instance v6, Lcom/mycompany/app/web/WebViewActivity$312;

    .line 137
    .line 138
    invoke-direct {v6, v1}, Lcom/mycompany/app/web/WebViewActivity$312;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 139
    .line 140
    .line 141
    move-object v3, p2

    .line 142
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 143
    .line 144
    .line 145
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->X5:Lcom/mycompany/app/view/MyPopupMenu;

    .line 146
    .line 147
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 148
    .line 149
    iget-object p1, v1, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 150
    .line 151
    if-nez p1, :cond_d

    .line 152
    .line 153
    :goto_0
    return-void

    .line 154
    :cond_d
    new-instance p2, Lcom/mycompany/app/web/WebViewActivity$313;

    .line 155
    .line 156
    invoke-direct {p2, v1}, Lcom/mycompany/app/web/WebViewActivity$313;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 160
    .line 161
    .line 162
    return-void
.end method
