.class Lcom/mycompany/app/dialog/DialogDownZip$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/compress/CompressUtil$CompressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogDownZip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogDownZip;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownZip;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownZip$21;->a:Lcom/mycompany/app/dialog/DialogDownZip;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownZip$21;->a:Lcom/mycompany/app/dialog/DialogDownZip;

    .line 2
    .line 3
    iget v0, p1, Lcom/mycompany/app/dialog/DialogDownZip;->j1:I

    .line 4
    .line 5
    add-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    iput v0, p1, Lcom/mycompany/app/dialog/DialogDownZip;->j1:I

    .line 8
    .line 9
    iget v1, p1, Lcom/mycompany/app/dialog/DialogDownZip;->i1:I

    .line 10
    .line 11
    if-le v0, v1, :cond_0

    .line 12
    .line 13
    iput v1, p1, Lcom/mycompany/app/dialog/DialogDownZip;->j1:I

    .line 14
    .line 15
    :cond_0
    if-nez p2, :cond_1

    .line 16
    .line 17
    iget p2, p1, Lcom/mycompany/app/dialog/DialogDownZip;->k1:I

    .line 18
    .line 19
    add-int/lit8 p2, p2, 0x1

    .line 20
    .line 21
    iput p2, p1, Lcom/mycompany/app/dialog/DialogDownZip;->k1:I

    .line 22
    .line 23
    if-le p2, v1, :cond_1

    .line 24
    .line 25
    iput v1, p1, Lcom/mycompany/app/dialog/DialogDownZip;->k1:I

    .line 26
    .line 27
    :cond_1
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogDownZip;->M0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 28
    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    new-instance p2, Lcom/mycompany/app/dialog/DialogDownZip$21$1;

    .line 33
    .line 34
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogDownZip$21$1;-><init>(Lcom/mycompany/app/dialog/DialogDownZip$21;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 38
    .line 39
    .line 40
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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownZip$21;->a:Lcom/mycompany/app/dialog/DialogDownZip;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogDownZip;->g1:Lcom/mycompany/app/dialog/DialogDownZip$ZipTask;

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
