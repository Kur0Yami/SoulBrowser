.class Lcom/mycompany/app/web/WebViewActivity$296$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$296;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$296;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$296$1;->c:Lcom/mycompany/app/web/WebViewActivity$296;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$296$1;->c:Lcom/mycompany/app/web/WebViewActivity$296;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$296;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->oj:Lcom/mycompany/app/web/WebViewActivity$PopItem;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iput-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->oj:Lcom/mycompany/app/web/WebViewActivity$PopItem;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->w6()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget v3, v0, Lcom/mycompany/app/web/WebViewActivity$PopItem;->a:I

    .line 17
    .line 18
    move-object v4, v2

    .line 19
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity$PopItem;->b:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v5, v0, Lcom/mycompany/app/web/WebViewActivity$PopItem;->c:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$PopItem;->d:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-eqz v6, :cond_1

    .line 30
    .line 31
    iget-object v5, v1, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 32
    .line 33
    :cond_1
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->P4()V

    .line 34
    .line 35
    .line 36
    const/4 v6, 0x4

    .line 37
    const/4 v7, 0x1

    .line 38
    if-ne v3, v6, :cond_2

    .line 39
    .line 40
    iput-object v5, v1, Lcom/mycompany/app/web/WebViewActivity;->Qc:Ljava/lang/String;

    .line 41
    .line 42
    new-instance v0, Lcom/mycompany/app/web/WebViewActivity$297;

    .line 43
    .line 44
    invoke-direct {v0, v1}, Lcom/mycompany/app/web/WebViewActivity$297;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v4, v2, v7, v0}, Lcom/mycompany/app/web/WebViewActivity;->F1(Lcom/mycompany/app/web/WebNestFrame;Ljava/lang/String;ZLcom/mycompany/app/web/WebViewActivity$TabAddListener;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    const/16 v6, 0x9

    .line 52
    .line 53
    if-ne v3, v6, :cond_4

    .line 54
    .line 55
    iput-object v5, v1, Lcom/mycompany/app/web/WebViewActivity;->Qc:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->Gb:Lcom/mycompany/app/web/WebNestView;

    .line 58
    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    iput-object v2, v0, Lcom/mycompany/app/web/WebNestView;->O1:Ljava/lang/String;

    .line 62
    .line 63
    new-instance v3, Lcom/mycompany/app/web/WebNestView$19;

    .line 64
    .line 65
    invoke-direct {v3, v0}, Lcom/mycompany/app/web/WebNestView$19;-><init>(Lcom/mycompany/app/web/WebNestView;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v3}, Lcom/mycompany/app/web/WebNestView;->J(Ljava/lang/Runnable;)V

    .line 69
    .line 70
    .line 71
    :cond_3
    new-instance v0, Lcom/mycompany/app/web/WebViewActivity$298;

    .line 72
    .line 73
    invoke-direct {v0, v1}, Lcom/mycompany/app/web/WebViewActivity$298;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v4, v2, v7, v0}, Lcom/mycompany/app/web/WebViewActivity;->F1(Lcom/mycompany/app/web/WebNestFrame;Ljava/lang/String;ZLcom/mycompany/app/web/WebViewActivity$TabAddListener;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_4
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->w6()V

    .line 81
    .line 82
    .line 83
    const/4 v4, 0x2

    .line 84
    if-ne v3, v4, :cond_5

    .line 85
    .line 86
    invoke-virtual {v1, v2, v5}, Lcom/mycompany/app/web/WebViewActivity;->S5(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_5
    const/4 v4, 0x5

    .line 91
    if-ne v3, v4, :cond_6

    .line 92
    .line 93
    invoke-virtual {v1, v2, v5}, Lcom/mycompany/app/web/WebViewActivity;->M9(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_6
    const/4 v4, 0x6

    .line 98
    if-ne v3, v4, :cond_7

    .line 99
    .line 100
    iput-object v5, v1, Lcom/mycompany/app/web/WebViewActivity;->ck:Ljava/lang/String;

    .line 101
    .line 102
    const/4 v7, 0x2

    .line 103
    const/4 v8, 0x0

    .line 104
    const/4 v3, 0x0

    .line 105
    const-string v4, "application/pdf"

    .line 106
    .line 107
    const-wide/16 v5, 0x0

    .line 108
    .line 109
    invoke-virtual/range {v1 .. v8}, Lcom/mycompany/app/web/WebViewActivity;->l9(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :cond_7
    const/16 v4, 0x8

    .line 114
    .line 115
    if-ne v3, v4, :cond_8

    .line 116
    .line 117
    invoke-virtual {v1, v7, v7}, Lcom/mycompany/app/web/WebViewActivity;->ea(IZ)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_8
    const/16 v4, 0xa

    .line 122
    .line 123
    if-ne v3, v4, :cond_b

    .line 124
    .line 125
    sget v3, Lcom/mycompany/app/pref/PrefPdf;->w:I

    .line 126
    .line 127
    if-eqz v3, :cond_9

    .line 128
    .line 129
    invoke-virtual {v1, v2, v0}, Lcom/mycompany/app/web/WebViewActivity;->d9(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_9
    iput-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->pj:Ljava/lang/String;

    .line 134
    .line 135
    iget-object v0, v1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 136
    .line 137
    if-nez v0, :cond_a

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_a
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$299;

    .line 141
    .line 142
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$299;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :cond_b
    const/16 v0, 0xc

    .line 150
    .line 151
    if-ne v3, v0, :cond_c

    .line 152
    .line 153
    invoke-virtual {v1, v2, v5, v7}, Lcom/mycompany/app/web/WebViewActivity;->B3(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 154
    .line 155
    .line 156
    :cond_c
    :goto_0
    return-void
.end method
