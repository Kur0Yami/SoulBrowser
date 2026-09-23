.class Lcom/mycompany/app/view/MyEditAuto$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/view/MyEditAuto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyEditAuto;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyEditAuto;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyEditAuto$6;->c:Lcom/mycompany/app/view/MyEditAuto;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyEditAuto$6;->c:Lcom/mycompany/app/view/MyEditAuto;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/view/MyEditAuto;->o:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-static {v0, v3}, Lcom/mycompany/app/view/MyEditAuto;->c(Lcom/mycompany/app/view/MyEditAuto;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/view/MyEditAuto;->n:Ljava/util/List;

    .line 17
    .line 18
    if-eqz v2, :cond_e

    .line 19
    .line 20
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    goto/16 :goto_4

    .line 27
    .line 28
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_d

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Ljava/lang/String;

    .line 43
    .line 44
    iget-object v5, v0, Lcom/mycompany/app/view/MyEditAuto;->n:Ljava/util/List;

    .line 45
    .line 46
    if-nez v5, :cond_3

    .line 47
    .line 48
    goto/16 :goto_3

    .line 49
    .line 50
    :cond_3
    iget-object v5, v0, Lcom/mycompany/app/view/MyEditAuto;->o:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-nez v5, :cond_4

    .line 57
    .line 58
    goto/16 :goto_3

    .line 59
    .line 60
    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_5

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_5
    const/4 v5, 0x0

    .line 68
    iput-boolean v5, v0, Lcom/mycompany/app/view/MyEditAuto;->p:Z

    .line 69
    .line 70
    if-nez v4, :cond_7

    .line 71
    .line 72
    :cond_6
    :goto_1
    move-object v5, v4

    .line 73
    goto :goto_2

    .line 74
    :cond_7
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-nez v5, :cond_8

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_8
    const/4 v6, 0x4

    .line 82
    const/4 v7, 0x1

    .line 83
    if-le v5, v6, :cond_9

    .line 84
    .line 85
    const-string v8, "www."

    .line 86
    .line 87
    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    if-eqz v8, :cond_9

    .line 92
    .line 93
    iput-boolean v7, v0, Lcom/mycompany/app/view/MyEditAuto;->p:Z

    .line 94
    .line 95
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    goto :goto_2

    .line 100
    :cond_9
    const/4 v6, 0x2

    .line 101
    if-le v5, v6, :cond_a

    .line 102
    .line 103
    const-string v8, "."

    .line 104
    .line 105
    invoke-virtual {v4, v8, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 106
    .line 107
    .line 108
    move-result v8

    .line 109
    if-eqz v8, :cond_a

    .line 110
    .line 111
    iput-boolean v7, v0, Lcom/mycompany/app/view/MyEditAuto;->p:Z

    .line 112
    .line 113
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    goto :goto_2

    .line 118
    :cond_a
    const/4 v6, 0x7

    .line 119
    if-le v5, v6, :cond_6

    .line 120
    .line 121
    const-string v5, "mobile."

    .line 122
    .line 123
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    if-eqz v5, :cond_6

    .line 128
    .line 129
    iput-boolean v7, v0, Lcom/mycompany/app/view/MyEditAuto;->p:Z

    .line 130
    .line 131
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    if-nez v6, :cond_b

    .line 140
    .line 141
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    if-eqz v6, :cond_b

    .line 146
    .line 147
    invoke-static {v0, v5}, Lcom/mycompany/app/view/MyEditAuto;->c(Lcom/mycompany/app/view/MyEditAuto;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :cond_b
    iget-boolean v5, v0, Lcom/mycompany/app/view/MyEditAuto;->p:Z

    .line 152
    .line 153
    if-nez v5, :cond_c

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_c
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    if-eqz v5, :cond_2

    .line 161
    .line 162
    invoke-static {v0, v4}, Lcom/mycompany/app/view/MyEditAuto;->c(Lcom/mycompany/app/view/MyEditAuto;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :cond_d
    :goto_3
    invoke-static {v0, v3}, Lcom/mycompany/app/view/MyEditAuto;->c(Lcom/mycompany/app/view/MyEditAuto;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :cond_e
    :goto_4
    invoke-static {v0, v3}, Lcom/mycompany/app/view/MyEditAuto;->c(Lcom/mycompany/app/view/MyEditAuto;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    return-void
.end method
