.class Lcom/mycompany/app/dialog/DialogSetFilter$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetFilter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetFilter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetFilter$12;->c:Lcom/mycompany/app/dialog/DialogSetFilter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/mycompany/app/dialog/DialogSetFilter;->p0:[[Ljava/lang/String;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetFilter$12;->c:Lcom/mycompany/app/dialog/DialogSetFilter;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetFilter;->o0:Lcom/mycompany/app/dialog/DialogWebView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebView;->dismiss()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogSetFilter;->o0:Lcom/mycompany/app/dialog/DialogWebView;

    .line 14
    .line 15
    :cond_0
    return-void
.end method
