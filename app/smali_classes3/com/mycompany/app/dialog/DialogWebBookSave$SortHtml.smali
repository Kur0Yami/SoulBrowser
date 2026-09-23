.class Lcom/mycompany/app/dialog/DialogWebBookSave$SortHtml;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogWebBookSave;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SortHtml"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;",
        ">;"
    }
.end annotation


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    .line 1
    check-cast p1, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;

    .line 2
    .line 3
    check-cast p2, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    if-nez p1, :cond_1

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_1
    if-nez p2, :cond_2

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_2
    iget-boolean v1, p1, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->b:Z

    .line 18
    .line 19
    if-nez v1, :cond_3

    .line 20
    .line 21
    iget-boolean v2, p2, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->b:Z

    .line 22
    .line 23
    if-eqz v2, :cond_5

    .line 24
    .line 25
    :cond_3
    iget-boolean v2, p2, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->b:Z

    .line 26
    .line 27
    if-nez v2, :cond_4

    .line 28
    .line 29
    :goto_0
    const/4 p1, -0x1

    .line 30
    return p1

    .line 31
    :cond_4
    if-nez v1, :cond_5

    .line 32
    .line 33
    :goto_1
    const/4 p1, 0x1

    .line 34
    return p1

    .line 35
    :cond_5
    iget-wide v1, p1, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->i:J

    .line 36
    .line 37
    iget-wide v3, p2, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->i:J

    .line 38
    .line 39
    invoke-static {v1, v2, v3, v4, v0}, Lcom/mycompany/app/main/MainUtil;->o(JJZ)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_6

    .line 44
    .line 45
    return v1

    .line 46
    :cond_6
    iget-wide v1, p1, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->h:J

    .line 47
    .line 48
    iget-wide v3, p2, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->h:J

    .line 49
    .line 50
    invoke-static {v1, v2, v3, v4, v0}, Lcom/mycompany/app/main/MainUtil;->o(JJZ)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_7

    .line 55
    .line 56
    return v1

    .line 57
    :cond_7
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->e:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v2, p2, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->e:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v1, v2, v0}, Lcom/mycompany/app/main/MainUtil;->m(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_8

    .line 66
    .line 67
    return v1

    .line 68
    :cond_8
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->d:Ljava/lang/String;

    .line 69
    .line 70
    iget-object p2, p2, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->d:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {p1, p2, v0}, Lcom/mycompany/app/main/MainUtil;->n(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    return p1
.end method
