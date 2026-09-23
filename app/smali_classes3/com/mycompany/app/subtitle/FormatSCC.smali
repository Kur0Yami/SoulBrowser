.class public Lcom/mycompany/app/subtitle/FormatSCC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/mycompany/app/subtitle/Caption;Ljava/util/ArrayList;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ljava/util/List;

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    :goto_0
    return-void

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/subtitle/Caption;->a:Lcom/mycompany/app/subtitle/Time;

    .line 19
    .line 20
    iget v0, v0, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 21
    .line 22
    iget-object v1, p0, Lcom/mycompany/app/subtitle/Caption;->b:Lcom/mycompany/app/subtitle/Time;

    .line 23
    .line 24
    iget v1, v1, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 25
    .line 26
    if-ge v0, v1, :cond_3

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-lez v0, :cond_2

    .line 33
    .line 34
    add-int/lit8 v0, v0, -0x1

    .line 35
    .line 36
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/mycompany/app/subtitle/SubtitleItem;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    iget-wide v1, v0, Lcom/mycompany/app/subtitle/SubtitleItem;->a:J

    .line 45
    .line 46
    iget-object v3, p0, Lcom/mycompany/app/subtitle/Caption;->a:Lcom/mycompany/app/subtitle/Time;

    .line 47
    .line 48
    iget v3, v3, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 49
    .line 50
    int-to-long v3, v3

    .line 51
    cmp-long v1, v1, v3

    .line 52
    .line 53
    if-nez v1, :cond_2

    .line 54
    .line 55
    iget-object v1, p0, Lcom/mycompany/app/subtitle/Caption;->c:Ljava/lang/String;

    .line 56
    .line 57
    iput-object v1, v0, Lcom/mycompany/app/subtitle/SubtitleItem;->b:Ljava/lang/String;

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    new-instance v0, Lcom/mycompany/app/subtitle/SubtitleItem;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/mycompany/app/subtitle/Caption;->a:Lcom/mycompany/app/subtitle/Time;

    .line 63
    .line 64
    iget v1, v1, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 65
    .line 66
    int-to-long v1, v1

    .line 67
    iget-object v3, p0, Lcom/mycompany/app/subtitle/Caption;->c:Ljava/lang/String;

    .line 68
    .line 69
    invoke-direct {v0, v1, v2, v3}, Lcom/mycompany/app/subtitle/SubtitleItem;-><init>(JLjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    :cond_3
    :goto_1
    new-instance v0, Lcom/mycompany/app/subtitle/SubtitleItem;

    .line 76
    .line 77
    iget-object p0, p0, Lcom/mycompany/app/subtitle/Caption;->b:Lcom/mycompany/app/subtitle/Time;

    .line 78
    .line 79
    iget p0, p0, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 80
    .line 81
    int-to-long v1, p0

    .line 82
    const/4 p0, 0x0

    .line 83
    invoke-direct {v0, v1, v2, p0}, Lcom/mycompany/app/subtitle/SubtitleItem;-><init>(JLjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public static b(B)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/16 v0, 0x2a

    .line 4
    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    .line 7
    const/16 v0, 0x5c

    .line 8
    .line 9
    if-eq p0, v0, :cond_0

    .line 10
    .line 11
    packed-switch p0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    packed-switch p0, :pswitch_data_1

    .line 15
    .line 16
    .line 17
    int-to-char p0, p0

    .line 18
    invoke-static {p0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    const-string p0, "|"

    .line 24
    .line 25
    return-object p0

    .line 26
    :pswitch_1
    const-string p0, "\u00f1"

    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_2
    const-string p0, "\u00d1"

    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_3
    const-string p0, "\u00e7"

    .line 33
    .line 34
    return-object p0

    .line 35
    :pswitch_4
    const-string p0, "\u00fa"

    .line 36
    .line 37
    return-object p0

    .line 38
    :pswitch_5
    const-string p0, "\u00f3"

    .line 39
    .line 40
    return-object p0

    .line 41
    :pswitch_6
    const-string p0, "\u00ed"

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_0
    const-string p0, "\u00e9"

    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_1
    :pswitch_7
    const-string p0, "\ufffd"

    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_2
    const-string p0, ""

    .line 51
    .line 52
    return-object p0

    .line 53
    :pswitch_data_0
    .packed-switch 0x5e
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    :pswitch_data_1
    .packed-switch 0x7b
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
