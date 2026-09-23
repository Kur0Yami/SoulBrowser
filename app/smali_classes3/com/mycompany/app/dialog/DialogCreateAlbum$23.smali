.class Lcom/mycompany/app/dialog/DialogCreateAlbum$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/compress/CompressUtil$CompressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogCreateAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogCreateAlbum;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogCreateAlbum;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogCreateAlbum$23;->a:Lcom/mycompany/app/dialog/DialogCreateAlbum;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogCreateAlbum$23;->a:Lcom/mycompany/app/dialog/DialogCreateAlbum;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->k1:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    iput-boolean p2, p1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->k1:Z

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget v0, p1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->m1:I

    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    iput v0, p1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->m1:I

    .line 16
    .line 17
    iget v1, p1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->l1:I

    .line 18
    .line 19
    if-le v0, v1, :cond_1

    .line 20
    .line 21
    iput v1, p1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->m1:I

    .line 22
    .line 23
    :cond_1
    if-nez p2, :cond_2

    .line 24
    .line 25
    iget p2, p1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->n1:I

    .line 26
    .line 27
    add-int/lit8 p2, p2, 0x1

    .line 28
    .line 29
    iput p2, p1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->n1:I

    .line 30
    .line 31
    if-le p2, v1, :cond_2

    .line 32
    .line 33
    iput v1, p1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->n1:I

    .line 34
    .line 35
    :cond_2
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->O0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 36
    .line 37
    if-nez p1, :cond_3

    .line 38
    .line 39
    return-void

    .line 40
    :cond_3
    new-instance p2, Lcom/mycompany/app/dialog/DialogCreateAlbum$23$1;

    .line 41
    .line 42
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogCreateAlbum$23$1;-><init>(Lcom/mycompany/app/dialog/DialogCreateAlbum$23;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final b(JJLjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final isCancelled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCreateAlbum$23;->a:Lcom/mycompany/app/dialog/DialogCreateAlbum;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->i1:Lcom/mycompany/app/dialog/DialogCreateAlbum$ZipTask;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method
