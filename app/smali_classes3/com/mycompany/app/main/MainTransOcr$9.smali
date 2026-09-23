.class Lcom/mycompany/app/main/MainTransOcr$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainTransOcr;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainTransOcr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainTransOcr$9;->c:Lcom/mycompany/app/main/MainTransOcr;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTransOcr$9;->c:Lcom/mycompany/app/main/MainTransOcr;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainTransOcr;->e:Ljava/util/List;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_3

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v4, "<!DOCTYPE html><html><head><meta charset=\"utf-8\"/><meta name=\'viewport\' content=\'width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no\'/><style>body{margin:0;}div{margin:0;position:absolute;max-width:100%;height:auto;}p{margin:0;font-size:10px;}</style></head><body>"

    .line 18
    .line 19
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_2

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;

    .line 37
    .line 38
    if-nez v4, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const-string v5, "<div id=\'"

    .line 42
    .line 43
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget v5, v4, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->f:I

    .line 47
    .line 48
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v5, "\'><p>"

    .line 52
    .line 53
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v4, v4, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->k:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v4, "</p></div>"

    .line 62
    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    const-string v1, "</body></html>"

    .line 68
    .line 69
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    :goto_1
    move-object v1, v2

    .line 78
    :goto_2
    iput-object v1, v0, Lcom/mycompany/app/main/MainTransOcr;->v:Ljava/lang/String;

    .line 79
    .line 80
    const-string v1, "soul_ocr_"

    .line 81
    .line 82
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->M1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    iput-object v1, v0, Lcom/mycompany/app/main/MainTransOcr;->n:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v0, v0, Lcom/mycompany/app/main/MainTransOcr;->f:Lcom/mycompany/app/view/MyWebSafe;

    .line 89
    .line 90
    if-nez v0, :cond_4

    .line 91
    .line 92
    return-void

    .line 93
    :cond_4
    new-instance v1, Lcom/mycompany/app/main/MainTransOcr$9$1;

    .line 94
    .line 95
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainTransOcr$9$1;-><init>(Lcom/mycompany/app/main/MainTransOcr$9;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 99
    .line 100
    .line 101
    return-void
.end method
