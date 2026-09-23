.class Lcom/mycompany/app/dialog/DialogWebView$35;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogWebView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebView$35;->c:Lcom/mycompany/app/dialog/DialogWebView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebView$35;->c:Lcom/mycompany/app/dialog/DialogWebView;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->Z1:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogWebView;->f0(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
