.class Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;->onVidDe3(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$20;->c:Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$20;->c:Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;->b:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->rh:Ljava/lang/String;

    .line 6
    .line 7
    iget v2, v0, Lcom/mycompany/app/web/WebViewActivity;->sh:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->rh:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 13
    .line 14
    if-nez v4, :cond_0

    .line 15
    .line 16
    goto/16 :goto_3

    .line 17
    .line 18
    :cond_0
    const/4 v4, 0x1

    .line 19
    if-ne v2, v4, :cond_3

    .line 20
    .line 21
    :try_start_0
    new-instance v2, Ljava/util/Scanner;

    .line 22
    .line 23
    invoke-direct {v2, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {v2}, Ljava/util/Scanner;->hasNextLine()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->n2(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    :cond_2
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 43
    .line 44
    .line 45
    goto/16 :goto_2

    .line 46
    .line 47
    :cond_3
    const/4 v5, 0x2

    .line 48
    if-ne v2, v5, :cond_f

    .line 49
    .line 50
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_4

    .line 55
    .line 56
    goto/16 :goto_2

    .line 57
    .line 58
    :cond_4
    :try_start_1
    const-string v2, "!@!"

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    if-eqz v1, :cond_f

    .line 65
    .line 66
    array-length v2, v1

    .line 67
    if-nez v2, :cond_5

    .line 68
    .line 69
    goto/16 :goto_2

    .line 70
    .line 71
    :cond_5
    array-length v2, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 72
    const/4 v5, 0x0

    .line 73
    move-object v6, v3

    .line 74
    move-object v7, v6

    .line 75
    move-object v8, v7

    .line 76
    :goto_0
    if-ge v5, v2, :cond_b

    .line 77
    .line 78
    :try_start_2
    aget-object v9, v1, v5

    .line 79
    .line 80
    invoke-static {v9}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    if-nez v10, :cond_6

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_6
    const-string v10, ".jpg"

    .line 88
    .line 89
    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v10

    .line 93
    if-eqz v10, :cond_7

    .line 94
    .line 95
    move-object v7, v9

    .line 96
    goto :goto_1

    .line 97
    :cond_7
    const-string v10, ".gif"

    .line 98
    .line 99
    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v10

    .line 103
    if-eqz v10, :cond_8

    .line 104
    .line 105
    move-object v8, v9

    .line 106
    :cond_8
    if-nez v6, :cond_9

    .line 107
    .line 108
    new-instance v10, Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .line 112
    .line 113
    move-object v6, v10

    .line 114
    :cond_9
    invoke-interface {v6, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v10

    .line 118
    if-nez v10, :cond_a

    .line 119
    .line 120
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    :cond_a
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Ji:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 124
    .line 125
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :catch_0
    move-object v6, v3

    .line 129
    move-object v7, v6

    .line 130
    move-object v8, v7

    .line 131
    :catch_1
    :cond_b
    if-eqz v6, :cond_f

    .line 132
    .line 133
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_c

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_c
    iput-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->Ki:Z

    .line 141
    .line 142
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_d

    .line 147
    .line 148
    move-object v7, v8

    .line 149
    :cond_d
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 150
    .line 151
    if-eqz v1, :cond_e

    .line 152
    .line 153
    invoke-virtual {v1, v3}, Lcom/mycompany/app/web/WebNestView;->D(Ljava/util/ArrayList;)V

    .line 154
    .line 155
    .line 156
    :cond_e
    invoke-virtual {v0, v3, v3, v7, v6}, Lcom/mycompany/app/web/WebViewActivity;->D7(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 157
    .line 158
    .line 159
    :catch_2
    :cond_f
    :goto_2
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->X7:Lcom/mycompany/app/dialog/DialogVideoList;

    .line 160
    .line 161
    if-eqz v0, :cond_10

    .line 162
    .line 163
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogVideoList;->G()V

    .line 164
    .line 165
    .line 166
    :cond_10
    :goto_3
    return-void
.end method
