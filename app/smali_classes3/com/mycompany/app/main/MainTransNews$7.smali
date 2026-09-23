.class Lcom/mycompany/app/main/MainTransNews$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainTransNews;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainTransNews;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainTransNews$7;->c:Lcom/mycompany/app/main/MainTransNews;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTransNews$7;->c:Lcom/mycompany/app/main/MainTransNews;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainTransNews;->e:Ljava/util/List;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-nez v3, :cond_1

    .line 14
    .line 15
    :goto_0
    move-object v1, v2

    .line 16
    goto/16 :goto_4

    .line 17
    .line 18
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v5, "<!DOCTYPE html><html><head><meta charset=\"utf-8\"/><meta name=\'viewport\' content=\'width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no\'/><style>body{margin:0;}div{margin:0;position:absolute;max-width:100%;height:auto;}p,h1,h2{margin:0;font-size:10px;}</style></head><body>"

    .line 21
    .line 22
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    :goto_1
    if-ge v5, v3, :cond_8

    .line 27
    .line 28
    iget-boolean v6, v0, Lcom/mycompany/app/main/MainTransNews;->s:Z

    .line 29
    .line 30
    xor-int/lit8 v7, v6, 0x1

    .line 31
    .line 32
    iput-boolean v7, v0, Lcom/mycompany/app/main/MainTransNews;->s:Z

    .line 33
    .line 34
    if-nez v6, :cond_2

    .line 35
    .line 36
    iget v7, v0, Lcom/mycompany/app/main/MainTransNews;->r:I

    .line 37
    .line 38
    sub-int v8, v7, v5

    .line 39
    .line 40
    if-gez v8, :cond_3

    .line 41
    .line 42
    add-int/lit8 v8, v7, 0x1

    .line 43
    .line 44
    iput-boolean v6, v0, Lcom/mycompany/app/main/MainTransNews;->s:Z

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    iget v7, v0, Lcom/mycompany/app/main/MainTransNews;->r:I

    .line 48
    .line 49
    add-int v8, v7, v5

    .line 50
    .line 51
    if-lt v8, v3, :cond_3

    .line 52
    .line 53
    add-int/lit8 v8, v7, -0x1

    .line 54
    .line 55
    iput-boolean v6, v0, Lcom/mycompany/app/main/MainTransNews;->s:Z

    .line 56
    .line 57
    :cond_3
    :goto_2
    iput v8, v0, Lcom/mycompany/app/main/MainTransNews;->r:I

    .line 58
    .line 59
    if-ltz v8, :cond_7

    .line 60
    .line 61
    if-lt v8, v3, :cond_4

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_4
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    check-cast v6, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 69
    .line 70
    if-nez v6, :cond_5

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_5
    iget v7, v6, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 74
    .line 75
    const/4 v8, 0x7

    .line 76
    if-eq v7, v8, :cond_6

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_6
    const-string v7, "<div id=\'"

    .line 80
    .line 81
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget v7, v6, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->o:I

    .line 85
    .line 86
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v7, "\'><p>"

    .line 90
    .line 91
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget-object v7, v6, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->f:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v7, "</p><h1>"

    .line 100
    .line 101
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-object v6, v6, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->r:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v6, "</h1></div>"

    .line 110
    .line 111
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    :cond_7
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_8
    const-string v1, "</body></html>"

    .line 118
    .line 119
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    :goto_4
    iput-object v1, v0, Lcom/mycompany/app/main/MainTransNews;->x:Ljava/lang/String;

    .line 127
    .line 128
    const-string v1, "soul_title_"

    .line 129
    .line 130
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->M1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    iput-object v1, v0, Lcom/mycompany/app/main/MainTransNews;->n:Ljava/lang/String;

    .line 135
    .line 136
    iget-object v0, v0, Lcom/mycompany/app/main/MainTransNews;->f:Lcom/mycompany/app/view/MyWebSafe;

    .line 137
    .line 138
    if-nez v0, :cond_9

    .line 139
    .line 140
    return-void

    .line 141
    :cond_9
    new-instance v1, Lcom/mycompany/app/main/MainTransNews$7$1;

    .line 142
    .line 143
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainTransNews$7$1;-><init>(Lcom/mycompany/app/main/MainTransNews$7;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 147
    .line 148
    .line 149
    return-void
.end method
