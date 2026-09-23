.class final Lcom/google/android/gms/cast/framework/media/zzbh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzbh;->c:Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzbh;->c:Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->i:Landroid/app/AlertDialog;

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/app/Dialog;->cancel()V

    .line 8
    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    iput-object p2, p1, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->i:Landroid/app/AlertDialog;

    .line 12
    .line 13
    :cond_0
    return-void
.end method
