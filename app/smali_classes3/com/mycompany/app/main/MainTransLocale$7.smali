.class Lcom/mycompany/app/main/MainTransLocale$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainTransLocale;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainTransLocale;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainTransLocale$7;->c:Lcom/mycompany/app/main/MainTransLocale;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTransLocale$7;->c:Lcom/mycompany/app/main/MainTransLocale;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainTransLocale;->f:Ljava/util/List;

    .line 4
    .line 5
    if-eqz v1, :cond_4

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v3, "<!DOCTYPE html><html><head><meta charset=\"utf-8\"/><meta name=\'viewport\' content=\'width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no\'/><style>body{margin:0;}div{margin:0;position:absolute;max-width:100%;height:auto;}p,h1{margin:0;font-size:10px;}</style></head><body>"

    .line 17
    .line 18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_3

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;

    .line 36
    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object v4, v3, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->d:Ljava/lang/String;

    .line 41
    .line 42
    const-string v5, " ("

    .line 43
    .line 44
    const-string v6, "="

    .line 45
    .line 46
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    const-string v5, ")"

    .line 51
    .line 52
    const-string v6, ""

    .line 53
    .line 54
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-eqz v5, :cond_2

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const-string v5, "<div id=\'"

    .line 66
    .line 67
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget v3, v3, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->c:I

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v3, "\'><p>"

    .line 76
    .line 77
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v3, "</p><h1>This is test.</h1><h1>\uc774\uac83\uc740 \ud14c\uc2a4\ud2b8\ub2e4.</h1><h1>\u3053\u308c\u306f\u30c6\u30b9\u30c8\u3067\u3059\u3002</h1></div>"

    .line 84
    .line 85
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    const-string v1, "</body></html>"

    .line 90
    .line 91
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    goto :goto_2

    .line 99
    :cond_4
    :goto_1
    const/4 v1, 0x0

    .line 100
    :goto_2
    iput-object v1, v0, Lcom/mycompany/app/main/MainTransLocale;->w:Ljava/lang/String;

    .line 101
    .line 102
    iget-object v1, v0, Lcom/mycompany/app/main/MainTransLocale;->o:Ljava/lang/String;

    .line 103
    .line 104
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_5

    .line 109
    .line 110
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->g2()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    iput-object v1, v0, Lcom/mycompany/app/main/MainTransLocale;->o:Ljava/lang/String;

    .line 115
    .line 116
    :cond_5
    const-string v1, "soul_loc_"

    .line 117
    .line 118
    iget-object v2, v0, Lcom/mycompany/app/main/MainTransLocale;->o:Ljava/lang/String;

    .line 119
    .line 120
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->M1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    iput-object v1, v0, Lcom/mycompany/app/main/MainTransLocale;->p:Ljava/lang/String;

    .line 125
    .line 126
    iget-object v1, v0, Lcom/mycompany/app/main/MainTransLocale;->o:Ljava/lang/String;

    .line 127
    .line 128
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    const/4 v3, 0x0

    .line 133
    if-eqz v2, :cond_6

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_6
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 137
    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    if-eqz v2, :cond_7

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_7
    const-string v2, "ko"

    .line 150
    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    :goto_3
    iput-boolean v3, v0, Lcom/mycompany/app/main/MainTransLocale;->q:Z

    .line 156
    .line 157
    iget-object v0, v0, Lcom/mycompany/app/main/MainTransLocale;->h:Lcom/mycompany/app/view/MyWebSafe;

    .line 158
    .line 159
    if-nez v0, :cond_8

    .line 160
    .line 161
    return-void

    .line 162
    :cond_8
    new-instance v1, Lcom/mycompany/app/main/MainTransLocale$7$1;

    .line 163
    .line 164
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainTransLocale$7$1;-><init>(Lcom/mycompany/app/main/MainTransLocale$7;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 168
    .line 169
    .line 170
    return-void
.end method
