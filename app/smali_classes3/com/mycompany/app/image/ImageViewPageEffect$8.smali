.class Lcom/mycompany/app/image/ImageViewPageEffect$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/image/ImageViewPageEffect;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect$8;->c:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$8;->c:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->b1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->u:Ljava/lang/String;

    .line 15
    .line 16
    sget-boolean v1, Lcom/mycompany/app/pref/PrefList;->q:Z

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 21
    .line 22
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1, v2}, Lcom/mycompany/app/db/DbPdf;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iget v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->s:I

    .line 31
    .line 32
    iput v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 33
    .line 34
    iget v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->t:I

    .line 35
    .line 36
    iput v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 37
    .line 38
    iget v1, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->u:I

    .line 39
    .line 40
    iput v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 41
    .line 42
    :cond_1
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 43
    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    :goto_0
    return-void

    .line 47
    :cond_2
    new-instance v1, Lcom/mycompany/app/image/ImageViewPageEffect$8$1;

    .line 48
    .line 49
    invoke-direct {v1, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$8$1;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect$8;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    return-void
.end method
