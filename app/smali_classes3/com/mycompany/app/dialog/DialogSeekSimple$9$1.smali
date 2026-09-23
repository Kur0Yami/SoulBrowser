.class Lcom/mycompany/app/dialog/DialogSeekSimple$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSeekSimple$9;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSeekSimple$9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple$9$1;->c:Lcom/mycompany/app/dialog/DialogSeekSimple$9;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekSimple$9$1;->c:Lcom/mycompany/app/dialog/DialogSeekSimple$9;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSimple$9;->c:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSeekSimple;->w0:Landroid/graphics/Bitmap;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogSeekSimple;->w0:Landroid/graphics/Bitmap;

    .line 9
    .line 10
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSimple$9;->c:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 18
    .line 19
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSeekSimple;->i0:Lcom/mycompany/app/view/MyImageFilter;

    .line 20
    .line 21
    if-nez v3, :cond_1

    .line 22
    .line 23
    :goto_0
    return-void

    .line 24
    :cond_1
    iget v1, v1, Lcom/mycompany/app/dialog/DialogSeekSimple;->s0:I

    .line 25
    .line 26
    invoke-virtual {v3, v1}, Lcom/mycompany/app/view/MyImageFilter;->setImageBright(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSeekSimple$9;->c:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->i0:Lcom/mycompany/app/view/MyImageFilter;

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyImageFilter;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
