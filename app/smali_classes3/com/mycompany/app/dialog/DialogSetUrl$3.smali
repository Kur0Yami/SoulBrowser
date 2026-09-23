.class Lcom/mycompany/app/dialog/DialogSetUrl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetUrl;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetUrl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetUrl$3;->a:Lcom/mycompany/app/dialog/DialogSetUrl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetUrl$3;->a:Lcom/mycompany/app/dialog/DialogSetUrl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSetUrl;->b0:Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;->a(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
