.class Lcom/mycompany/app/web/WebViewActivity$SortFace;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/web/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SortFace"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/mycompany/app/web/WebViewActivity$FaceItem;",
        ">;"
    }
.end annotation


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lcom/mycompany/app/web/WebViewActivity$FaceItem;

    .line 2
    .line 3
    check-cast p2, Lcom/mycompany/app/web/WebViewActivity$FaceItem;

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
    iget-boolean v0, p1, Lcom/mycompany/app/web/WebViewActivity$FaceItem;->e:Z

    .line 17
    .line 18
    if-nez v0, :cond_3

    .line 19
    .line 20
    iget-boolean v1, p2, Lcom/mycompany/app/web/WebViewActivity$FaceItem;->e:Z

    .line 21
    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_3
    if-eqz v0, :cond_4

    .line 26
    .line 27
    iget-boolean v0, p2, Lcom/mycompany/app/web/WebViewActivity$FaceItem;->e:Z

    .line 28
    .line 29
    if-nez v0, :cond_4

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_4
    iget p1, p1, Lcom/mycompany/app/web/WebViewActivity$FaceItem;->d:I

    .line 33
    .line 34
    iget p2, p2, Lcom/mycompany/app/web/WebViewActivity$FaceItem;->d:I

    .line 35
    .line 36
    if-ge p1, p2, :cond_5

    .line 37
    .line 38
    :goto_0
    const/4 p1, -0x1

    .line 39
    return p1

    .line 40
    :cond_5
    if-le p1, p2, :cond_6

    .line 41
    .line 42
    :goto_1
    const/4 p1, 0x1

    .line 43
    return p1

    .line 44
    :cond_6
    :goto_2
    const/4 p1, 0x0

    .line 45
    return p1
.end method
