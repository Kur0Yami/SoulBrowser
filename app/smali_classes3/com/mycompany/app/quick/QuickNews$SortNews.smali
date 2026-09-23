.class public Lcom/mycompany/app/quick/QuickNews$SortNews;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/quick/QuickNews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SortNews"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/mycompany/app/quick/QuickAdapter$QuickItem;",
        ">;"
    }
.end annotation


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 2
    .line 3
    check-cast p2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    if-nez p1, :cond_1

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_1
    if-nez p2, :cond_2

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_2
    iget-wide v0, p1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->s:J

    .line 17
    .line 18
    iget-wide p1, p2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->s:J

    .line 19
    .line 20
    cmp-long p1, v0, p1

    .line 21
    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    :goto_0
    const/4 p1, 0x0

    .line 25
    return p1

    .line 26
    :cond_3
    if-lez p1, :cond_4

    .line 27
    .line 28
    :goto_1
    const/4 p1, -0x1

    .line 29
    return p1

    .line 30
    :cond_4
    :goto_2
    const/4 p1, 0x1

    .line 31
    return p1
.end method
