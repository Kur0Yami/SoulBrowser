.class Lcom/mycompany/app/dialog/DialogCapture$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogDownPage$DownPageListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogCapture;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogCapture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogCapture$15;->a:Lcom/mycompany/app/dialog/DialogCapture;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/mycompany/app/dialog/DialogCapture$SaveTask;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCapture$15;->a:Lcom/mycompany/app/dialog/DialogCapture;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2, p3}, Lcom/mycompany/app/dialog/DialogCapture$SaveTask;-><init>(Lcom/mycompany/app/dialog/DialogCapture;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 6
    .line 7
    .line 8
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogCapture;->x:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
