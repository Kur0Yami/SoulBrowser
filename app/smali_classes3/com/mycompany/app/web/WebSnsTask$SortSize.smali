.class public Lcom/mycompany/app/web/WebSnsTask$SortSize;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/web/WebSnsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SortSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/mycompany/app/main/MainDownAdapter$DownListItem;",
        ">;"
    }
.end annotation


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 2
    .line 3
    check-cast p2, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    if-nez p1, :cond_1

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_1
    if-nez p2, :cond_2

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_2
    iget p1, p1, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->j:I

    .line 17
    .line 18
    iget p2, p2, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->j:I

    .line 19
    .line 20
    if-ge p1, p2, :cond_3

    .line 21
    .line 22
    :goto_0
    const/4 p1, -0x1

    .line 23
    return p1

    .line 24
    :cond_3
    if-le p1, p2, :cond_4

    .line 25
    .line 26
    :goto_1
    const/4 p1, 0x1

    .line 27
    return p1

    .line 28
    :cond_4
    :goto_2
    const/4 p1, 0x0

    .line 29
    return p1
.end method
